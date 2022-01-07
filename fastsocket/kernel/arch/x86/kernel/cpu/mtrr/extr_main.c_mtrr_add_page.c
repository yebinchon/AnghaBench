
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int mtrr_type ;
struct TYPE_2__ {int (* validate_add_page ) (unsigned long,unsigned long,unsigned int) ;int (* get_free_region ) (unsigned long,unsigned long,int) ;int (* get ) (int,unsigned long*,unsigned long*,unsigned int*) ;} ;


 int EINVAL ;
 int ENOSYS ;
 int ENXIO ;
 unsigned int MTRR_NUM_TYPES ;
 unsigned int MTRR_TYPE_WRCOMB ;
 int get_online_cpus () ;
 int have_wrcomb () ;
 scalar_t__ likely (int) ;
 unsigned long mtrr_attrib_to_str (unsigned int) ;
 TYPE_1__* mtrr_if ;
 int mtrr_mutex ;
 int* mtrr_usage_table ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_var_ranges ;
 int pr_info (char*) ;
 int pr_warning (char*,...) ;
 int put_online_cpus () ;
 int set_mtrr (int,unsigned long,unsigned long,unsigned int,int) ;
 unsigned long size_or_mask ;
 int stub1 (unsigned long,unsigned long,unsigned int) ;
 int stub2 (int,unsigned long*,unsigned long*,unsigned int*) ;
 int stub3 (unsigned long,unsigned long,int) ;
 scalar_t__ types_compatible (unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

int mtrr_add_page(unsigned long base, unsigned long size,
    unsigned int type, bool increment)
{
 unsigned long lbase, lsize;
 int i, replace, error;
 mtrr_type ltype;

 if (!mtrr_if)
  return -ENXIO;

 error = mtrr_if->validate_add_page(base, size, type);
 if (error)
  return error;

 if (type >= MTRR_NUM_TYPES) {
  pr_warning("mtrr: type: %u invalid\n", type);
  return -EINVAL;
 }


 if ((type == MTRR_TYPE_WRCOMB) && !have_wrcomb()) {
  pr_warning("mtrr: your processor doesn't support write-combining\n");
  return -ENOSYS;
 }

 if (!size) {
  pr_warning("mtrr: zero sized request\n");
  return -EINVAL;
 }

 if (base & size_or_mask || size & size_or_mask) {
  pr_warning("mtrr: base or size exceeds the MTRR width\n");
  return -EINVAL;
 }

 error = -EINVAL;
 replace = -1;


 get_online_cpus();


 mutex_lock(&mtrr_mutex);
 for (i = 0; i < num_var_ranges; ++i) {
  mtrr_if->get(i, &lbase, &lsize, &ltype);
  if (!lsize || base > lbase + lsize - 1 ||
      base + size - 1 < lbase)
   continue;




  if (base < lbase || base + size - 1 > lbase + lsize - 1) {
   if (base <= lbase &&
       base + size - 1 >= lbase + lsize - 1) {

    if (type == ltype) {
     replace = replace == -1 ? i : -2;
     continue;
    } else if (types_compatible(type, ltype))
     continue;
   }
   pr_warning("mtrr: 0x%lx000,0x%lx000 overlaps existing"
    " 0x%lx000,0x%lx000\n", base, size, lbase,
    lsize);
   goto out;
  }

  if (ltype != type) {
   if (types_compatible(type, ltype))
    continue;
   pr_warning("mtrr: type mismatch for %lx000,%lx000 old: %s new: %s\n",
    base, size, mtrr_attrib_to_str(ltype),
    mtrr_attrib_to_str(type));
   goto out;
  }
  if (increment)
   ++mtrr_usage_table[i];
  error = i;
  goto out;
 }

 i = mtrr_if->get_free_region(base, size, replace);
 if (i >= 0) {
  set_mtrr(i, base, size, type, 0);
  if (likely(replace < 0)) {
   mtrr_usage_table[i] = 1;
  } else {
   mtrr_usage_table[i] = mtrr_usage_table[replace];
   if (increment)
    mtrr_usage_table[i]++;
   if (unlikely(replace != i)) {
    set_mtrr(replace, 0, 0, 0, 0);
    mtrr_usage_table[replace] = 0;
   }
  }
 } else {
  pr_info("mtrr: no more MTRRs available\n");
 }
 error = i;
 out:
 mutex_unlock(&mtrr_mutex);
 put_online_cpus();
 return error;
}
