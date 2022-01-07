
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIPER_HI_IRQ_STATUS ;
 int VIPER_LO_IRQ_STATUS ;
 int viper_irq_to_bitmask (unsigned int) ;

__attribute__((used)) static void viper_ack_irq(unsigned int irq)
{
 int viper_irq = viper_irq_to_bitmask(irq);

 if (viper_irq & 0xff)
  VIPER_LO_IRQ_STATUS = viper_irq;
 else
  VIPER_HI_IRQ_STATUS = (viper_irq >> 8);
}
