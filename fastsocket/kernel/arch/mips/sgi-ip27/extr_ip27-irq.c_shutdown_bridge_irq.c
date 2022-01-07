
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bridge_controller {TYPE_1__* base; } ;
typedef int cpuid_t ;
struct TYPE_2__ {int b_int_enable; int b_wid_tflush; } ;
typedef TYPE_1__ bridge_t ;


 struct bridge_controller* IRQ_TO_BRIDGE (unsigned int) ;
 int SLOT_FROM_PCI_IRQ (unsigned int) ;
 int find_level (int *,unsigned int) ;
 int intr_disconnect_level (int ,int) ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static void shutdown_bridge_irq(unsigned int irq)
{
 struct bridge_controller *bc = IRQ_TO_BRIDGE(irq);
 bridge_t *bridge = bc->base;
 int pin, swlevel;
 cpuid_t cpu;

 pr_debug("bridge_shutdown: irq 0x%x\n", irq);
 pin = SLOT_FROM_PCI_IRQ(irq);





 swlevel = find_level(&cpu, irq);
 intr_disconnect_level(cpu, swlevel);

 bridge->b_int_enable &= ~(1 << pin);
 bridge->b_wid_tflush;
}
