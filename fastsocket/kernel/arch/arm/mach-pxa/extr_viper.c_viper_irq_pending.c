
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIPER_HI_IRQ_STATUS ;
 int VIPER_LO_IRQ_STATUS ;
 int viper_irq_enabled_mask ;

__attribute__((used)) static inline unsigned long viper_irq_pending(void)
{
 return (VIPER_HI_IRQ_STATUS << 8 | VIPER_LO_IRQ_STATUS) &
   viper_irq_enabled_mask;
}
