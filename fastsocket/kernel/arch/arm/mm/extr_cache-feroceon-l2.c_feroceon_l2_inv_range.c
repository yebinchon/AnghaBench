
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_LINE_SIZE ;
 unsigned long calc_range_end (unsigned long,unsigned long) ;
 int dsb () ;
 int l2_clean_inv_pa (unsigned long) ;
 int l2_inv_pa_range (unsigned long,unsigned long) ;

__attribute__((used)) static void feroceon_l2_inv_range(unsigned long start, unsigned long end)
{



 if (start & (CACHE_LINE_SIZE - 1)) {
  l2_clean_inv_pa(start & ~(CACHE_LINE_SIZE - 1));
  start = (start | (CACHE_LINE_SIZE - 1)) + 1;
 }




 if (start < end && end & (CACHE_LINE_SIZE - 1)) {
  l2_clean_inv_pa(end & ~(CACHE_LINE_SIZE - 1));
  end &= ~(CACHE_LINE_SIZE - 1);
 }




 while (start < end) {
  unsigned long range_end = calc_range_end(start, end);
  l2_inv_pa_range(start, range_end - CACHE_LINE_SIZE);
  start = range_end;
 }

 dsb();
}
