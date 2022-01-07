
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ vf_count; int net_dev; } ;


 int drv ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;

__attribute__((used)) static void efx_sriov_handle_no_channel(struct efx_nic *efx)
{
 netif_err(efx, drv, efx->net_dev,
    "ERROR: IOV requires MSI-X and 1 additional interrupt"
    "vector. IOV disabled\n");
 efx->vf_count = 0;
}
