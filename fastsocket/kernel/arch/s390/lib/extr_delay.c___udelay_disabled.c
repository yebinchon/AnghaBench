
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ clock_comparator; } ;


 unsigned long PSW_MASK_EXT ;
 unsigned long PSW_MASK_WAIT ;
 TYPE_1__ S390_lowcore ;
 int __ctl_load (unsigned long,int ,int ) ;
 int __ctl_store (unsigned long,int ,int ) ;
 int __load_psw_mask (unsigned long) ;
 scalar_t__ get_clock () ;
 int local_irq_disable () ;
 scalar_t__ local_tick_disable () ;
 int local_tick_enable (scalar_t__) ;
 int lockdep_off () ;
 int lockdep_on () ;
 unsigned long psw_kernel_bits ;
 int set_clock_comparator (scalar_t__) ;
 int trace_hardirqs_on () ;

__attribute__((used)) static void __udelay_disabled(unsigned long long usecs)
{
 unsigned long mask, cr0, cr0_saved;
 u64 clock_saved;
 u64 end;

 mask = psw_kernel_bits | PSW_MASK_WAIT | PSW_MASK_EXT;
 end = get_clock() + (usecs << 12);
 clock_saved = local_tick_disable();
 __ctl_store(cr0_saved, 0, 0);
 cr0 = (cr0_saved & 0xffff00e0) | 0x00000800;
 __ctl_load(cr0 , 0, 0);
 lockdep_off();
 do {
  set_clock_comparator(end);
  trace_hardirqs_on();
  __load_psw_mask(mask);
  local_irq_disable();
 } while (get_clock() < end);
 lockdep_on();
 __ctl_load(cr0_saved, 0, 0);
 local_tick_enable(clock_saved);
 set_clock_comparator(S390_lowcore.clock_comparator);
}
