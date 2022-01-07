
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_LEVEL_LOW ;
 int IRQ_SIGNAL_THROUGH ;
 int IRQ_TRIGGER_LEVEL ;
 int TB0219_PCI_SLOT1_PIN ;
 int TB0219_PCI_SLOT2_PIN ;
 int TB0219_PCI_SLOT3_PIN ;
 int vr41xx_set_irq_level (int ,int ) ;
 int vr41xx_set_irq_trigger (int ,int ,int ) ;

__attribute__((used)) static void tb0219_pci_irq_init(void)
{

 vr41xx_set_irq_trigger(TB0219_PCI_SLOT1_PIN, IRQ_TRIGGER_LEVEL, IRQ_SIGNAL_THROUGH);
 vr41xx_set_irq_level(TB0219_PCI_SLOT1_PIN, IRQ_LEVEL_LOW);


 vr41xx_set_irq_trigger(TB0219_PCI_SLOT2_PIN, IRQ_TRIGGER_LEVEL, IRQ_SIGNAL_THROUGH);
 vr41xx_set_irq_level(TB0219_PCI_SLOT2_PIN, IRQ_LEVEL_LOW);


 vr41xx_set_irq_trigger(TB0219_PCI_SLOT3_PIN, IRQ_TRIGGER_LEVEL, IRQ_SIGNAL_THROUGH);
 vr41xx_set_irq_level(TB0219_PCI_SLOT3_PIN, IRQ_LEVEL_LOW);
}
