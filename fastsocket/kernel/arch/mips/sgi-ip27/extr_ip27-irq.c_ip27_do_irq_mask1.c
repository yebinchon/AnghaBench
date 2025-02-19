
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slice_data {int* level_to_irq; } ;
typedef int hubreg_t ;
typedef size_t cpuid_t ;
struct TYPE_2__ {struct slice_data* data; } ;


 int LOCAL_HUB_CLR_INTR (int) ;
 int LOCAL_HUB_L (int) ;
 int PI_INT_MASK1_A ;
 int PI_INT_MASK1_B ;
 int PI_INT_PEND1 ;
 TYPE_1__* cpu_data ;
 scalar_t__ cputoslice (size_t) ;
 int do_IRQ (int) ;
 int ms1bit (int ) ;
 size_t smp_processor_id () ;

__attribute__((used)) static void ip27_do_irq_mask1(void)
{
 int irq, swlevel;
 hubreg_t pend1, mask1;
 cpuid_t cpu = smp_processor_id();
 int pi_int_mask1 = (cputoslice(cpu) == 0) ? PI_INT_MASK1_A : PI_INT_MASK1_B;
 struct slice_data *si = cpu_data[cpu].data;


 pend1 = LOCAL_HUB_L(PI_INT_PEND1);
 mask1 = LOCAL_HUB_L(pi_int_mask1);

 pend1 &= mask1;
 if (!pend1)
  return;

 swlevel = ms1bit(pend1);

 irq = si->level_to_irq[swlevel];
 LOCAL_HUB_CLR_INTR(swlevel);
 do_IRQ(irq);

 LOCAL_HUB_L(PI_INT_PEND1);
}
