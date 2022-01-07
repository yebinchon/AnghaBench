
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpc85xx_mc_pdata {scalar_t__ mc_vbase; } ;
struct mem_ctl_info {struct mpc85xx_mc_pdata* pvt_info; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MPC85XX_MC_ERR_DETECT ;
 int in_be32 (scalar_t__) ;
 int mpc85xx_mc_check (struct mem_ctl_info*) ;

__attribute__((used)) static irqreturn_t mpc85xx_mc_isr(int irq, void *dev_id)
{
 struct mem_ctl_info *mci = dev_id;
 struct mpc85xx_mc_pdata *pdata = mci->pvt_info;
 u32 err_detect;

 err_detect = in_be32(pdata->mc_vbase + MPC85XX_MC_ERR_DETECT);
 if (!err_detect)
  return IRQ_NONE;

 mpc85xx_mc_check(mci);

 return IRQ_HANDLED;
}
