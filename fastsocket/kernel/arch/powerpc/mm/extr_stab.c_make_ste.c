
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_entry {unsigned long esid_data; unsigned long vsid_data; } ;
struct TYPE_2__ {unsigned long stab_rr; } ;


 unsigned long ESID_MASK ;
 unsigned long PAGE_OFFSET ;
 unsigned long SID_SHIFT ;
 unsigned long STE_ESID_KP ;
 unsigned long STE_ESID_KS ;
 unsigned long STE_ESID_V ;
 unsigned long STE_VSID_SHIFT ;
 int eieio () ;
 TYPE_1__* get_paca () ;

__attribute__((used)) static int make_ste(unsigned long stab, unsigned long esid, unsigned long vsid)
{
 unsigned long esid_data, vsid_data;
 unsigned long entry, group, old_esid, castout_entry, i;
 unsigned int global_entry;
 struct stab_entry *ste, *castout_ste;
 unsigned long kernel_segment = (esid << SID_SHIFT) >= PAGE_OFFSET;

 vsid_data = vsid << STE_VSID_SHIFT;
 esid_data = esid << SID_SHIFT | STE_ESID_KP | STE_ESID_V;
 if (! kernel_segment)
  esid_data |= STE_ESID_KS;


 global_entry = (esid & 0x1f) << 3;
 ste = (struct stab_entry *)(stab | ((esid & 0x1f) << 7));


 for (group = 0; group < 2; group++) {
  for (entry = 0; entry < 8; entry++, ste++) {
   if (!(ste->esid_data & STE_ESID_V)) {
    ste->vsid_data = vsid_data;
    eieio();
    ste->esid_data = esid_data;
    return (global_entry | entry);
   }
  }

  global_entry = ((~esid) & 0x1f) << 3;
  ste = (struct stab_entry *)(stab | (((~esid) & 0x1f) << 7));
 }





 castout_entry = get_paca()->stab_rr;
 for (i = 0; i < 16; i++) {
  if (castout_entry < 8) {
   global_entry = (esid & 0x1f) << 3;
   ste = (struct stab_entry *)(stab | ((esid & 0x1f) << 7));
   castout_ste = ste + castout_entry;
  } else {
   global_entry = ((~esid) & 0x1f) << 3;
   ste = (struct stab_entry *)(stab | (((~esid) & 0x1f) << 7));
   castout_ste = ste + (castout_entry - 8);
  }


  if ((castout_ste->esid_data & ESID_MASK) != PAGE_OFFSET)
   break;

  castout_entry = (castout_entry + 1) & 0xf;
 }

 get_paca()->stab_rr = (castout_entry + 1) & 0xf;




 asm volatile("isync" : : : "memory");

 old_esid = castout_ste->esid_data >> SID_SHIFT;
 castout_ste->esid_data = 0;

 asm volatile("sync" : : : "memory");

 castout_ste->vsid_data = vsid_data;
 eieio();
 castout_ste->esid_data = esid_data;

 asm volatile("slbie  %0" : : "r" (old_esid << SID_SHIFT));

 asm volatile("sync" : : : "memory");

 return (global_entry | (castout_entry & 0x7));
}
