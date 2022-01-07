
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {scalar_t__ wolopts; scalar_t__ supported; } ;



__attribute__((used)) static void igbvf_get_wol(struct net_device *netdev,
                          struct ethtool_wolinfo *wol)
{
 wol->supported = 0;
 wol->wolopts = 0;
}
