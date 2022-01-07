
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ c0_compare_int_pending () ;
 int compare_change_hazard () ;
 unsigned int read_c0_count () ;
 int write_c0_compare (unsigned int) ;

int c0_compare_int_usable(void)
{
 unsigned int delta;
 unsigned int cnt;




 if (c0_compare_int_pending()) {
  write_c0_compare(read_c0_count());
  compare_change_hazard();
  if (c0_compare_int_pending())
   return 0;
 }

 for (delta = 0x10; delta <= 0x400000; delta <<= 1) {
  cnt = read_c0_count();
  cnt += delta;
  write_c0_compare(cnt);
  compare_change_hazard();
  if ((int)(read_c0_count() - cnt) < 0)
      break;

 }

 while ((int)(read_c0_count() - cnt) <= 0)
  ;

 compare_change_hazard();
 if (!c0_compare_int_pending())
  return 0;

 write_c0_compare(read_c0_count());
 compare_change_hazard();
 if (c0_compare_int_pending())
  return 0;




 return 1;
}
