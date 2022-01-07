
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slice_data {int* level_to_irq; } ;
typedef unsigned long hubreg_t ;
typedef size_t cpuid_t ;
struct TYPE_2__ {struct slice_data* data; } ;


 unsigned long CPU_CALL_A_IRQ ;
 unsigned long CPU_CALL_B_IRQ ;
 unsigned long CPU_RESCHED_A_IRQ ;
 unsigned long CPU_RESCHED_B_IRQ ;
 int LOCAL_HUB_CLR_INTR (unsigned long) ;
 unsigned long LOCAL_HUB_L (int) ;
 int PI_INT_MASK0_A ;
 int PI_INT_MASK0_B ;
 int PI_INT_PEND0 ;
 TYPE_1__* cpu_data ;
 scalar_t__ cputoslice (size_t) ;
 int do_IRQ (int) ;
 int ms1bit (unsigned long) ;
 int smp_call_function_interrupt () ;
 size_t smp_processor_id () ;

__attribute__((used)) static void ip27_do_irq_mask0(void)
{
 int irq, swlevel;
 hubreg_t pend0, mask0;
 cpuid_t cpu = smp_processor_id();
 int pi_int_mask0 =
  (cputoslice(cpu) == 0) ? PI_INT_MASK0_A : PI_INT_MASK0_B;


 pend0 = LOCAL_HUB_L(PI_INT_PEND0);
 mask0 = LOCAL_HUB_L(pi_int_mask0);

 pend0 &= mask0;
 if (!pend0)
  return;

 swlevel = ms1bit(pend0);
 {

  struct slice_data *si = cpu_data[cpu].data;

  irq = si->level_to_irq[swlevel];
  do_IRQ(irq);
 }

 LOCAL_HUB_L(PI_INT_PEND0);
}
