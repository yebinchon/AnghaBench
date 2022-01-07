
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_AIC_SMR (unsigned int) ;
 unsigned int AT91_AIC_SRCTYPE ;
 unsigned int AT91_AIC_SRCTYPE_FALLING ;
 unsigned int AT91_AIC_SRCTYPE_HIGH ;
 unsigned int AT91_AIC_SRCTYPE_LOW ;
 unsigned int AT91_AIC_SRCTYPE_RISING ;
 unsigned int AT91_ID_FIQ ;
 int EINVAL ;




 unsigned int at91_sys_read (int ) ;
 int at91_sys_write (int ,unsigned int) ;
 int is_extern_irq (unsigned int) ;

__attribute__((used)) static int at91_aic_set_type(unsigned irq, unsigned type)
{
 unsigned int smr, srctype;

 switch (type) {
 case 129:
  srctype = AT91_AIC_SRCTYPE_HIGH;
  break;
 case 130:
  srctype = AT91_AIC_SRCTYPE_RISING;
  break;
 case 128:
  if ((irq == AT91_ID_FIQ) || is_extern_irq(irq))
   srctype = AT91_AIC_SRCTYPE_LOW;
  else
   return -EINVAL;
  break;
 case 131:
  if ((irq == AT91_ID_FIQ) || is_extern_irq(irq))
   srctype = AT91_AIC_SRCTYPE_FALLING;
  else
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 smr = at91_sys_read(AT91_AIC_SMR(irq)) & ~AT91_AIC_SRCTYPE;
 at91_sys_write(AT91_AIC_SMR(irq), smr | srctype);
 return 0;
}
