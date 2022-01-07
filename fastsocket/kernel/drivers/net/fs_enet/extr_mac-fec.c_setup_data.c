
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ htlo; scalar_t__ hthi; } ;
struct fs_enet_private {int ev_err; int ev_tx; int ev_rx; int ev_napi_rx; TYPE_1__ fec; } ;


 int EINVAL ;
 int FEC_ERR_EVENT_MSK ;
 int FEC_NAPI_RX_EVENT_MSK ;
 int FEC_RX_EVENT ;
 int FEC_TX_EVENT ;
 scalar_t__ do_pd_setup (struct fs_enet_private*) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int setup_data(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 if (do_pd_setup(fep) != 0)
  return -EINVAL;

 fep->fec.hthi = 0;
 fep->fec.htlo = 0;

 fep->ev_napi_rx = FEC_NAPI_RX_EVENT_MSK;
 fep->ev_rx = FEC_RX_EVENT;
 fep->ev_tx = FEC_TX_EVENT;
 fep->ev_err = FEC_ERR_EVENT_MSK;

 return 0;
}
