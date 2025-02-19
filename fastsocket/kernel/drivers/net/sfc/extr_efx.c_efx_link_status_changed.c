
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct efx_link_state {scalar_t__ up; scalar_t__ fd; int speed; } ;
struct efx_nic {TYPE_1__* net_dev; scalar_t__ promiscuous; int n_link_state_changes; struct efx_link_state link_state; } ;
struct TYPE_6__ {int mtu; } ;


 int link ;
 int netif_carrier_off (TYPE_1__*) ;
 scalar_t__ netif_carrier_ok (TYPE_1__*) ;
 int netif_carrier_on (TYPE_1__*) ;
 int netif_info (struct efx_nic*,int ,TYPE_1__*,char*,...) ;
 int netif_running (TYPE_1__*) ;

void efx_link_status_changed(struct efx_nic *efx)
{
 struct efx_link_state *link_state = &efx->link_state;





 if (!netif_running(efx->net_dev))
  return;

 if (link_state->up != netif_carrier_ok(efx->net_dev)) {
  efx->n_link_state_changes++;

  if (link_state->up)
   netif_carrier_on(efx->net_dev);
  else
   netif_carrier_off(efx->net_dev);
 }


 if (link_state->up)
  netif_info(efx, link, efx->net_dev,
      "link up at %uMbps %s-duplex (MTU %d)%s\n",
      link_state->speed, link_state->fd ? "full" : "half",
      efx->net_dev->mtu,
      (efx->promiscuous ? " [PROMISC]" : ""));
 else
  netif_info(efx, link, efx->net_dev, "link down\n");
}
