
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ htlo; scalar_t__ hthi; } ;
struct fs_enet_private {int ev_tx; int ev_err; int ev_rx; int ev_napi_rx; TYPE_1__ scc; } ;


 int SCCE_ENET_TXE ;
 int SCC_ERR_EVENT_MSK ;
 int SCC_NAPI_RX_EVENT_MSK ;
 int SCC_RX_EVENT ;
 int SCC_TX_EVENT ;
 int do_pd_setup (struct fs_enet_private*) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int setup_data(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 do_pd_setup(fep);

 fep->scc.hthi = 0;
 fep->scc.htlo = 0;

 fep->ev_napi_rx = SCC_NAPI_RX_EVENT_MSK;
 fep->ev_rx = SCC_RX_EVENT;
 fep->ev_tx = SCC_TX_EVENT | SCCE_ENET_TXE;
 fep->ev_err = SCC_ERR_EVENT_MSK;

 return 0;
}
