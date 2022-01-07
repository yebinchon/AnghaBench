
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int byte; } ;
struct efx_nic {TYPE_1__ multicast_hash; int mac_lock; } ;


 int MC_CMD_SET_MCAST_HASH ;
 int WARN_ON (int) ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int ,int,int *,int ,int *) ;
 int efx_mcdi_set_mac (struct efx_nic*) ;
 int mutex_is_locked (int *) ;

int efx_mcdi_mac_reconfigure(struct efx_nic *efx)
{
 int rc;

 WARN_ON(!mutex_is_locked(&efx->mac_lock));

 rc = efx_mcdi_set_mac(efx);
 if (rc != 0)
  return rc;

 return efx_mcdi_rpc(efx, MC_CMD_SET_MCAST_HASH,
       efx->multicast_hash.byte,
       sizeof(efx->multicast_hash),
       ((void*)0), 0, ((void*)0));
}
