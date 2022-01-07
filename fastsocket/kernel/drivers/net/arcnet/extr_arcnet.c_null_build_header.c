
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct arcnet_local {int * default_proto; } ;


 int BUGMSG (int ,char*,int ) ;
 int D_PROTO ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int null_build_header(struct sk_buff *skb, struct net_device *dev,
        unsigned short type, uint8_t daddr)
{
 struct arcnet_local *lp = netdev_priv(dev);

 BUGMSG(D_PROTO,
        "tx: can't build header for encap %02Xh; load a protocol driver.\n",
        lp->default_proto[daddr]);


 return 0;
}
