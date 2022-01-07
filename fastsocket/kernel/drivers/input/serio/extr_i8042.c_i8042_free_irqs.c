
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_AUX_IRQ ;
 int I8042_KBD_IRQ ;
 int free_irq (int ,int ) ;
 int i8042_aux_irq_registered ;
 int i8042_kbd_irq_registered ;
 int i8042_platform_device ;

__attribute__((used)) static void i8042_free_irqs(void)
{
 if (i8042_aux_irq_registered)
  free_irq(I8042_AUX_IRQ, i8042_platform_device);
 if (i8042_kbd_irq_registered)
  free_irq(I8042_KBD_IRQ, i8042_platform_device);

 i8042_aux_irq_registered = i8042_kbd_irq_registered = 0;
}
