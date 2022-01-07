
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_link_state {int fd; int up; int speed; int fc; } ;
struct efx_nic {struct efx_link_state link_state; int wanted_fc; int mac_lock; } ;


 int LOOPBACK_INTERNAL (struct efx_nic*) ;
 int WARN_ON (int) ;
 int efx_link_state_equal (struct efx_link_state*,struct efx_link_state*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static bool falcon_loopback_link_poll(struct efx_nic *efx)
{
 struct efx_link_state old_state = efx->link_state;

 WARN_ON(!mutex_is_locked(&efx->mac_lock));
 WARN_ON(!LOOPBACK_INTERNAL(efx));

 efx->link_state.fd = 1;
 efx->link_state.fc = efx->wanted_fc;
 efx->link_state.up = 1;
 efx->link_state.speed = 10000;

 return !efx_link_state_equal(&efx->link_state, &old_state);
}
