
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_l2_pdata {scalar_t__ l2_vbase; } ;
struct edac_device_ctl_info {struct mpc85xx_l2_pdata* pvt_info; } ;
typedef size_t ssize_t ;


 scalar_t__ MPC85XX_L2_ERRINJLO ;
 scalar_t__ isdigit (char const) ;
 int out_be32 (scalar_t__,int ) ;
 int simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t mpc85xx_l2_inject_data_lo_store(struct edac_device_ctl_info
            *edac_dev, const char *data,
            size_t count)
{
 struct mpc85xx_l2_pdata *pdata = edac_dev->pvt_info;
 if (isdigit(*data)) {
  out_be32(pdata->l2_vbase + MPC85XX_L2_ERRINJLO,
    simple_strtoul(data, ((void*)0), 0));
  return count;
 }
 return 0;
}
