
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {int enabled; int* fixed_ranges; int def_type; TYPE_1__* var_ranges; scalar_t__ have_fixed; } ;
struct TYPE_3__ {int mask_lo; int base_lo; scalar_t__ mask_hi; scalar_t__ base_hi; } ;


 int MTRR_TYPE_UNCACHABLE ;
 int MTRR_TYPE_WRBACK ;
 int MTRR_TYPE_WRTHROUGH ;
 int PAGE_MASK ;
 TYPE_2__ mtrr_state ;
 int mtrr_state_set ;
 int mtrr_tom2 ;
 int num_var_ranges ;

u8 mtrr_type_lookup(u64 start, u64 end)
{
 int i;
 u64 base, mask;
 u8 prev_match, curr_match;

 if (!mtrr_state_set)
  return 0xFF;

 if (!mtrr_state.enabled)
  return 0xFF;


 end--;


 if (mtrr_state.have_fixed && (start < 0x100000)) {
  int idx;

  if (start < 0x80000) {
   idx = 0;
   idx += (start >> 16);
   return mtrr_state.fixed_ranges[idx];
  } else if (start < 0xC0000) {
   idx = 1 * 8;
   idx += ((start - 0x80000) >> 14);
   return mtrr_state.fixed_ranges[idx];
  } else if (start < 0x1000000) {
   idx = 3 * 8;
   idx += ((start - 0xC0000) >> 12);
   return mtrr_state.fixed_ranges[idx];
  }
 }






 if (!(mtrr_state.enabled & 2))
  return mtrr_state.def_type;

 prev_match = 0xFF;
 for (i = 0; i < num_var_ranges; ++i) {
  unsigned short start_state, end_state;

  if (!(mtrr_state.var_ranges[i].mask_lo & (1 << 11)))
   continue;

  base = (((u64)mtrr_state.var_ranges[i].base_hi) << 32) +
         (mtrr_state.var_ranges[i].base_lo & PAGE_MASK);
  mask = (((u64)mtrr_state.var_ranges[i].mask_hi) << 32) +
         (mtrr_state.var_ranges[i].mask_lo & PAGE_MASK);

  start_state = ((start & mask) == (base & mask));
  end_state = ((end & mask) == (base & mask));
  if (start_state != end_state)
   return 0xFE;

  if ((start & mask) != (base & mask))
   continue;

  curr_match = mtrr_state.var_ranges[i].base_lo & 0xff;
  if (prev_match == 0xFF) {
   prev_match = curr_match;
   continue;
  }

  if (prev_match == MTRR_TYPE_UNCACHABLE ||
      curr_match == MTRR_TYPE_UNCACHABLE) {
   return MTRR_TYPE_UNCACHABLE;
  }

  if ((prev_match == MTRR_TYPE_WRBACK &&
       curr_match == MTRR_TYPE_WRTHROUGH) ||
      (prev_match == MTRR_TYPE_WRTHROUGH &&
       curr_match == MTRR_TYPE_WRBACK)) {
   prev_match = MTRR_TYPE_WRTHROUGH;
   curr_match = MTRR_TYPE_WRTHROUGH;
  }

  if (prev_match != curr_match)
   return MTRR_TYPE_UNCACHABLE;
 }

 if (mtrr_tom2) {
  if (start >= (1ULL<<32) && (end < mtrr_tom2))
   return MTRR_TYPE_WRBACK;
 }

 if (prev_match != 0xFF)
  return prev_match;

 return mtrr_state.def_type;
}
