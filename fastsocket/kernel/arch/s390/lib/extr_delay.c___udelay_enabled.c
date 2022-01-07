
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ clock_comparator; } ;


 unsigned long PSW_MASK_EXT ;
 unsigned long PSW_MASK_IO ;
 unsigned long PSW_MASK_WAIT ;
 TYPE_1__ S390_lowcore ;
 int __load_psw_mask (unsigned long) ;
 scalar_t__ get_clock () ;
 int local_irq_disable () ;
 scalar_t__ local_tick_disable () ;
 int local_tick_enable (scalar_t__) ;
 unsigned long psw_kernel_bits ;
 int set_clock_comparator (scalar_t__) ;
 int trace_hardirqs_on () ;

__attribute__((used)) static void __udelay_enabled(unsigned long long usecs)
{
 unsigned long mask;
 u64 clock_saved;
 u64 end;

 mask = psw_kernel_bits | PSW_MASK_WAIT | PSW_MASK_EXT | PSW_MASK_IO;
 end = get_clock() + (usecs << 12);
 do {
  clock_saved = 0;
  if (end < S390_lowcore.clock_comparator) {
   clock_saved = local_tick_disable();
   set_clock_comparator(end);
  }
  trace_hardirqs_on();
  __load_psw_mask(mask);
  local_irq_disable();
  if (clock_saved)
   local_tick_enable(clock_saved);
 } while (get_clock() < end);
 set_clock_comparator(S390_lowcore.clock_comparator);
}
