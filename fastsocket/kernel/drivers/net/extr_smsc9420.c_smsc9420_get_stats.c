
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc9420_pdata {int dummy; } ;
struct net_device_stats {int rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;


 int MISS_FRAME_CNTR ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;

__attribute__((used)) static struct net_device_stats *smsc9420_get_stats(struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);
 u32 counter = smsc9420_reg_read(pd, MISS_FRAME_CNTR);
 dev->stats.rx_dropped +=
     (counter & 0x0000FFFF) + ((counter >> 17) & 0x000003FF);
 return &dev->stats;
}
