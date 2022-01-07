
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union efx_multicast_hash {int * oword; } ;
struct efx_nic {int mac_lock; union efx_multicast_hash multicast_hash; } ;


 int FR_AB_MAC_MC_HASH_REG0 ;
 int FR_AB_MAC_MC_HASH_REG1 ;
 int WARN_ON (int) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void falcon_push_multicast_hash(struct efx_nic *efx)
{
 union efx_multicast_hash *mc_hash = &efx->multicast_hash;

 WARN_ON(!mutex_is_locked(&efx->mac_lock));

 efx_writeo(efx, &mc_hash->oword[0], FR_AB_MAC_MC_HASH_REG0);
 efx_writeo(efx, &mc_hash->oword[1], FR_AB_MAC_MC_HASH_REG1);
}
