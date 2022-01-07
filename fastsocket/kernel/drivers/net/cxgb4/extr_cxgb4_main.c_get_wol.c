
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int sopass; int wolopts; } ;
struct TYPE_2__ {int wol; } ;


 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int memset (int *,int ,int) ;
 TYPE_1__* netdev2adap (struct net_device*) ;

__attribute__((used)) static void get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 wol->supported = WAKE_BCAST | WAKE_MAGIC;
 wol->wolopts = netdev2adap(dev)->wol;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
