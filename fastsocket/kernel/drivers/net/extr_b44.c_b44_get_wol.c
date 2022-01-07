
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int sopass; void* wolopts; void* supported; } ;
struct b44 {int flags; } ;


 int B44_FLAG_WOL_ENABLE ;
 void* WAKE_MAGIC ;
 int memset (int *,int ,int) ;
 struct b44* netdev_priv (struct net_device*) ;

__attribute__((used)) static void b44_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct b44 *bp = netdev_priv(dev);

 wol->supported = WAKE_MAGIC;
 if (bp->flags & B44_FLAG_WOL_ENABLE)
  wol->wolopts = WAKE_MAGIC;
 else
  wol->wolopts = 0;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
