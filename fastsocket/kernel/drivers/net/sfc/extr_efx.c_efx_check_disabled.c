
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ state; int net_dev; } ;


 int EIO ;
 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_RECOVERY ;
 int drv ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;

__attribute__((used)) static int efx_check_disabled(struct efx_nic *efx)
{
 if (efx->state == STATE_DISABLED || efx->state == STATE_RECOVERY) {
  netif_err(efx, drv, efx->net_dev,
     "device is disabled due to earlier errors\n");
  return -EIO;
 }
 return 0;
}
