
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int tx_chan; int adapter; } ;
struct net_device {int * dev_addr; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int BCAST_CRC ;
 int EINVAL ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WOL_SUPPORTED ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_wol_magic_enable (int ,int ,int *) ;
 int t4_wol_pat_enable (int ,int ,int,unsigned long long,unsigned long long,int ,int) ;

__attribute__((used)) static int set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 int err = 0;
 struct port_info *pi = netdev_priv(dev);

 if (wol->wolopts & ~WOL_SUPPORTED)
  return -EINVAL;
 t4_wol_magic_enable(pi->adapter, pi->tx_chan,
       (wol->wolopts & WAKE_MAGIC) ? dev->dev_addr : ((void*)0));
 if (wol->wolopts & WAKE_BCAST) {
  err = t4_wol_pat_enable(pi->adapter, pi->tx_chan, 0xfe, ~0ULL,
     ~0ULL, 0, 0);
  if (!err)
   err = t4_wol_pat_enable(pi->adapter, pi->tx_chan, 1,
      ~6ULL, ~0ULL, BCAST_CRC, 1);
 } else
  t4_wol_pat_enable(pi->adapter, pi->tx_chan, 0, 0, 0, 0, 0);
 return err;
}
