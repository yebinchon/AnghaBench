
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char current_mask ;


 int NR_IRQS ;
 int SUN4C_INT_E1 ;
 int SUN4C_INT_E10 ;
 int SUN4C_INT_E14 ;
 int SUN4C_INT_E8 ;
 int interrupt_enable ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned char sbus_readb (int ) ;
 int sbus_writeb (unsigned char,int ) ;

__attribute__((used)) static void sun4c_disable_irq(unsigned int irq_nr)
{
 unsigned long flags;
 unsigned char current_mask, new_mask;

 local_irq_save(flags);
 irq_nr &= (NR_IRQS - 1);
 current_mask = sbus_readb(interrupt_enable);
 switch(irq_nr) {
 case 1:
  new_mask = ((current_mask) & (~(SUN4C_INT_E1)));
  break;
 case 8:
  new_mask = ((current_mask) & (~(SUN4C_INT_E8)));
  break;
 case 10:
  new_mask = ((current_mask) & (~(SUN4C_INT_E10)));
  break;
 case 14:
  new_mask = ((current_mask) & (~(SUN4C_INT_E14)));
  break;
 default:
  local_irq_restore(flags);
  return;
 }
 sbus_writeb(new_mask, interrupt_enable);
 local_irq_restore(flags);
}
