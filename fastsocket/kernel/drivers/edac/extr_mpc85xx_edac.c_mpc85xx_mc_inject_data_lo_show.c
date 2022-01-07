
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_mc_pdata {scalar_t__ mc_vbase; } ;
struct mem_ctl_info {struct mpc85xx_mc_pdata* pvt_info; } ;
typedef int ssize_t ;


 scalar_t__ MPC85XX_MC_DATA_ERR_INJECT_LO ;
 int in_be32 (scalar_t__) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t mpc85xx_mc_inject_data_lo_show(struct mem_ctl_info *mci,
           char *data)
{
 struct mpc85xx_mc_pdata *pdata = mci->pvt_info;
 return sprintf(data, "0x%08x",
         in_be32(pdata->mc_vbase +
          MPC85XX_MC_DATA_ERR_INJECT_LO));
}
