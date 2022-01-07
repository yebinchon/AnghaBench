
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * dev_addr; } ;
struct TYPE_2__ {int (* copy_to_card ) (struct net_device*,int,int ,struct arc_hardware*,int ) ;} ;
struct arcnet_local {TYPE_1__ hw; } ;
struct archdr {int dummy; } ;
struct arc_hardware {int* offset; int dest; int source; } ;


 int ARC_HDR_SIZE ;
 int BUGMSG (int ,char*) ;
 int D_PROTO ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int,int ,struct arc_hardware*,int ) ;

__attribute__((used)) static int null_prepare_tx(struct net_device *dev, struct archdr *pkt,
      int length, int bufnum)
{
 struct arcnet_local *lp = netdev_priv(dev);
 struct arc_hardware newpkt;

 BUGMSG(D_PROTO, "tx: no encap for this host; load a protocol driver.\n");


 newpkt.source = newpkt.dest = dev->dev_addr[0];


 newpkt.offset[0] = 0xFF;

 lp->hw.copy_to_card(dev, bufnum, 0, &newpkt, ARC_HDR_SIZE);

 return 1;
}
