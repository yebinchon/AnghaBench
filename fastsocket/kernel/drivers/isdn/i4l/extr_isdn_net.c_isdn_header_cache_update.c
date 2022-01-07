
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hh_cache {int dummy; } ;
struct TYPE_3__ {scalar_t__ p_encap; } ;
typedef TYPE_1__ isdn_net_local ;


 scalar_t__ ISDN_NET_ENCAP_ETHER ;
 int eth_header_cache_update (struct hh_cache*,struct net_device const*,unsigned char const*) ;
 TYPE_1__* netdev_priv (struct net_device const*) ;

__attribute__((used)) static void isdn_header_cache_update(struct hh_cache *hh,
         const struct net_device *dev,
         const unsigned char *haddr)
{
 isdn_net_local *lp = netdev_priv(dev);
 if (lp->p_encap == ISDN_NET_ENCAP_ETHER)
  eth_header_cache_update(hh, dev, haddr);
}
