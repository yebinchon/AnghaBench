
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ iw_mode; } ;
typedef TYPE_1__ islpci_private ;


 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int islpci_reset (TYPE_1__*,int) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int prism54_bring_down (TYPE_1__*) ;

__attribute__((used)) static int
islpci_open(struct net_device *ndev)
{
 u32 rc;
 islpci_private *priv = netdev_priv(ndev);


 rc = islpci_reset(priv,1);
 if (rc) {
  prism54_bring_down(priv);
  return rc;
 }

 netif_start_queue(ndev);






 if (priv->iw_mode == IW_MODE_INFRA || priv->iw_mode == IW_MODE_ADHOC)
  netif_carrier_off(ndev);
 else
  netif_carrier_on(ndev);

 return 0;
}
