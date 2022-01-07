
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slowport_cfg {int ADC; void* PCR; void* RTC; void* WTC; void* CCR; } ;


 int * IXP2000_SLOWPORT_ADC ;
 void** IXP2000_SLOWPORT_CCR ;
 void** IXP2000_SLOWPORT_PCR ;
 void** IXP2000_SLOWPORT_RTC2 ;
 void** IXP2000_SLOWPORT_WTC2 ;
 int ixp2000_reg_wrb (int *,int ) ;
 int ixp2000_reg_write (void**,void*) ;
 int ixp2000_slowport_irq_flags ;
 int ixp2000_slowport_lock ;
 int spin_lock_irqsave (int *,int ) ;

void ixp2000_acquire_slowport(struct slowport_cfg *new_cfg, struct slowport_cfg *old_cfg)
{
 spin_lock_irqsave(&ixp2000_slowport_lock, ixp2000_slowport_irq_flags);

 old_cfg->CCR = *IXP2000_SLOWPORT_CCR;
 old_cfg->WTC = *IXP2000_SLOWPORT_WTC2;
 old_cfg->RTC = *IXP2000_SLOWPORT_RTC2;
 old_cfg->PCR = *IXP2000_SLOWPORT_PCR;
 old_cfg->ADC = *IXP2000_SLOWPORT_ADC;

 ixp2000_reg_write(IXP2000_SLOWPORT_CCR, new_cfg->CCR);
 ixp2000_reg_write(IXP2000_SLOWPORT_WTC2, new_cfg->WTC);
 ixp2000_reg_write(IXP2000_SLOWPORT_RTC2, new_cfg->RTC);
 ixp2000_reg_write(IXP2000_SLOWPORT_PCR, new_cfg->PCR);
 ixp2000_reg_wrb(IXP2000_SLOWPORT_ADC, new_cfg->ADC);
}
