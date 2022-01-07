
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ cpu_khz ;
 int do_div (int,int) ;

__attribute__((used)) static unsigned int adjust_for_32bit_ctr(unsigned int hz)
{
 u64 counter_val;
 unsigned int retval = hz;
 counter_val = (u64)cpu_khz * 1000;
 do_div(counter_val, retval);
 if (counter_val > 0x7fffffffULL) {
  u64 count = (u64)cpu_khz * 1000;
  do_div(count, 0x7fffffffUL);
  retval = count + 1;
 }
 return retval;
}
