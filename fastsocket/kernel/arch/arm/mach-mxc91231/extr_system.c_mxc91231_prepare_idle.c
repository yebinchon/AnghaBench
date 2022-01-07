
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MXC_DSM_CRM_CONTROL ;
 int MXC_DSM_CRM_CTRL_LPMD0 ;
 int MXC_DSM_CRM_CTRL_LPMD1 ;
 int MXC_DSM_CRM_CTRL_LPMD_WAIT_MODE ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

void mxc91231_prepare_idle(void)
{
 u32 crm_ctl;


 crm_ctl = __raw_readl(MXC_DSM_CRM_CONTROL);
 crm_ctl &= ~(MXC_DSM_CRM_CTRL_LPMD0 | MXC_DSM_CRM_CTRL_LPMD1);
 crm_ctl |= MXC_DSM_CRM_CTRL_LPMD_WAIT_MODE;
 __raw_writel(crm_ctl, MXC_DSM_CRM_CONTROL);
}
