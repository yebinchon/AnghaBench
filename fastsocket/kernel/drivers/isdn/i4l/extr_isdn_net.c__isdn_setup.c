
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int flags; int tx_queue_len; int * netdev_ops; int * header_ops; } ;
struct TYPE_4__ {int isdn_device; int isdn_channel; int pre_device; int pre_channel; int exclusive; int ppp_slot; int pppbind; int triggercps; int slavedelay; int onhtime; int dialmax; int flags; int cbdelay; int dialtimeout; int dialwait; scalar_t__ dialwait_timer; scalar_t__ dialstarted; int hupflags; int l3_proto; int l2_proto; int super_tx_queue; struct TYPE_4__* next; struct TYPE_4__* last; int magic; int p_encap; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_5__ {int ext_priv_flags; } ;


 int HZ ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int IFF_TX_SKB_SHARING ;
 int ISDN_INHUP ;
 int ISDN_NET_CBHUP ;
 int ISDN_NET_DM_MANUAL ;
 int ISDN_NET_ENCAP_RAWIP ;
 int ISDN_NET_MAGIC ;
 int ISDN_PROTO_L2_X75I ;
 int ISDN_PROTO_L3_TRANS ;
 int ether_setup (struct net_device*) ;
 int isdn_netdev_ops ;
 TYPE_3__* netdev_extended (struct net_device*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void _isdn_setup(struct net_device *dev)
{
 isdn_net_local *lp = netdev_priv(dev);

 ether_setup(dev);


 dev->flags = IFF_NOARP|IFF_POINTOPOINT;


 netdev_extended(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->header_ops = ((void*)0);
 dev->netdev_ops = &isdn_netdev_ops;


 dev->tx_queue_len = 30;

 lp->p_encap = ISDN_NET_ENCAP_RAWIP;
 lp->magic = ISDN_NET_MAGIC;
 lp->last = lp;
 lp->next = lp;
 lp->isdn_device = -1;
 lp->isdn_channel = -1;
 lp->pre_device = -1;
 lp->pre_channel = -1;
 lp->exclusive = -1;
 lp->ppp_slot = -1;
 lp->pppbind = -1;
 skb_queue_head_init(&lp->super_tx_queue);
 lp->l2_proto = ISDN_PROTO_L2_X75I;
 lp->l3_proto = ISDN_PROTO_L3_TRANS;
 lp->triggercps = 6000;
 lp->slavedelay = 10 * HZ;
 lp->hupflags = ISDN_INHUP;
 lp->onhtime = 10;
 lp->dialmax = 1;

 lp->flags = ISDN_NET_CBHUP | ISDN_NET_DM_MANUAL;
 lp->cbdelay = 25;
 lp->dialtimeout = -1;
 lp->dialwait = 5 * HZ;
 lp->dialstarted = 0;
 lp->dialwait_timer = 0;
}
