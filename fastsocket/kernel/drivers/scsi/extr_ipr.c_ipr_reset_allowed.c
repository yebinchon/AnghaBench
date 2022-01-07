
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sense_interrupt_reg; } ;
struct ipr_ioa_cfg {TYPE_1__ regs; } ;


 int volatile IPR_PCII_CRITICAL_OPERATION ;
 int readl (int ) ;

__attribute__((used)) static int ipr_reset_allowed(struct ipr_ioa_cfg *ioa_cfg)
{
 volatile u32 temp_reg;

 temp_reg = readl(ioa_cfg->regs.sense_interrupt_reg);
 return ((temp_reg & IPR_PCII_CRITICAL_OPERATION) == 0);
}
