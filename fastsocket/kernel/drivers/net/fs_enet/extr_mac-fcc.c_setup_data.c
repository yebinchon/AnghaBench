
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fs_enet_private {int ev_err; int ev_tx; int ev_rx; int ev_napi_rx; } ;


 int EINVAL ;
 int FCC_ERR_EVENT_MSK ;
 int FCC_NAPI_RX_EVENT_MSK ;
 int FCC_RX_EVENT ;
 int FCC_TX_EVENT ;
 scalar_t__ do_pd_setup (struct fs_enet_private*) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int setup_data(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 if (do_pd_setup(fep) != 0)
  return -EINVAL;

 fep->ev_napi_rx = FCC_NAPI_RX_EVENT_MSK;
 fep->ev_rx = FCC_RX_EVENT;
 fep->ev_tx = FCC_TX_EVENT;
 fep->ev_err = FCC_ERR_EVENT_MSK;

 return 0;
}
