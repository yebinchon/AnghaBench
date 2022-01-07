
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; int broadcast_capable; int initial_mtu; } ;
struct qeth_card {TYPE_3__* dev; int napi; TYPE_2__* gdev; TYPE_1__ info; } ;
struct TYPE_10__ {int features; int * netdev_ops; int mtu; int watchdog_timeo; struct qeth_card* ml_priv; int flags; } ;
struct TYPE_9__ {int dev; } ;


 int ENODEV ;
 int IFF_NOARP ;
 int NETIF_F_HW_VLAN_FILTER ;


 int QETH_NAPI_WEIGHT ;
 int QETH_TX_TIMEOUT ;
 int SET_ETHTOOL_OPS (TYPE_3__*,int *) ;
 int SET_NETDEV_DEV (TYPE_3__*,int *) ;
 TYPE_3__* alloc_etherdev (int ) ;
 void* alloc_netdev (int ,char*,int ) ;
 int ether_setup ;
 int netif_napi_add (TYPE_3__*,int *,int ,int ) ;
 int qeth_l2_ethtool_ops ;
 int qeth_l2_netdev_ops ;
 int qeth_l2_osn_ops ;
 int qeth_l2_poll ;
 int qeth_l2_request_initial_mac (struct qeth_card*) ;
 int register_netdev (TYPE_3__*) ;

__attribute__((used)) static int qeth_l2_setup_netdev(struct qeth_card *card)
{
 switch (card->info.type) {
 case 129:
  card->dev = alloc_netdev(0, "hsi%d", ether_setup);
  break;
 case 128:
  card->dev = alloc_netdev(0, "osn%d", ether_setup);
  card->dev->flags |= IFF_NOARP;
  break;
 default:
  card->dev = alloc_etherdev(0);
 }

 if (!card->dev)
  return -ENODEV;

 card->dev->ml_priv = card;
 card->dev->watchdog_timeo = QETH_TX_TIMEOUT;
 card->dev->mtu = card->info.initial_mtu;
 card->dev->netdev_ops = &qeth_l2_netdev_ops;
 if (card->info.type != 128)
  SET_ETHTOOL_OPS(card->dev, &qeth_l2_ethtool_ops);
 else
  SET_ETHTOOL_OPS(card->dev, &qeth_l2_osn_ops);
 card->dev->features |= NETIF_F_HW_VLAN_FILTER;
 card->info.broadcast_capable = 1;
 qeth_l2_request_initial_mac(card);
 SET_NETDEV_DEV(card->dev, &card->gdev->dev);
 netif_napi_add(card->dev, &card->napi, qeth_l2_poll, QETH_NAPI_WEIGHT);
 return register_netdev(card->dev);
}
