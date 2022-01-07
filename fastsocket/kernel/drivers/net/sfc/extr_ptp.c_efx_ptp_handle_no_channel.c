
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;


 int drv ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;

__attribute__((used)) static void efx_ptp_handle_no_channel(struct efx_nic *efx)
{
 netif_err(efx, drv, efx->net_dev,
    "ERROR: PTP requires MSI-X and 1 additional interrupt"
    "vector. PTP disabled\n");
}
