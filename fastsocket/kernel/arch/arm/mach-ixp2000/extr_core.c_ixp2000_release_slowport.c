
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slowport_cfg {int ADC; int PCR; int RTC; int WTC; int CCR; } ;


 int IXP2000_SLOWPORT_ADC ;
 int IXP2000_SLOWPORT_CCR ;
 int IXP2000_SLOWPORT_PCR ;
 int IXP2000_SLOWPORT_RTC2 ;
 int IXP2000_SLOWPORT_WTC2 ;
 int ixp2000_reg_wrb (int ,int ) ;
 int ixp2000_reg_write (int ,int ) ;
 int ixp2000_slowport_irq_flags ;
 int ixp2000_slowport_lock ;
 int spin_unlock_irqrestore (int *,int ) ;

void ixp2000_release_slowport(struct slowport_cfg *old_cfg)
{
 ixp2000_reg_write(IXP2000_SLOWPORT_CCR, old_cfg->CCR);
 ixp2000_reg_write(IXP2000_SLOWPORT_WTC2, old_cfg->WTC);
 ixp2000_reg_write(IXP2000_SLOWPORT_RTC2, old_cfg->RTC);
 ixp2000_reg_write(IXP2000_SLOWPORT_PCR, old_cfg->PCR);
 ixp2000_reg_wrb(IXP2000_SLOWPORT_ADC, old_cfg->ADC);

 spin_unlock_irqrestore(&ixp2000_slowport_lock,
     ixp2000_slowport_irq_flags);
}
