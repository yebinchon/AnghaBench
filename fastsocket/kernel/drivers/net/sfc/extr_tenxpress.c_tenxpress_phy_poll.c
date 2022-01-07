
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_link_state {int speed; int fd; int up; int fc; } ;
struct efx_nic {struct efx_link_state link_state; } ;


 int efx_link_state_equal (struct efx_link_state*,struct efx_link_state*) ;
 int efx_mdio_get_pause (struct efx_nic*) ;
 int sfx7101_check_bad_lp (struct efx_nic*,int ) ;
 int sfx7101_link_ok (struct efx_nic*) ;

__attribute__((used)) static bool tenxpress_phy_poll(struct efx_nic *efx)
{
 struct efx_link_state old_state = efx->link_state;

 efx->link_state.up = sfx7101_link_ok(efx);
 efx->link_state.speed = 10000;
 efx->link_state.fd = 1;
 efx->link_state.fc = efx_mdio_get_pause(efx);

 sfx7101_check_bad_lp(efx, efx->link_state.up);

 return !efx_link_state_equal(&efx->link_state, &old_state);
}
