
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_mac {int dummy; } ;
struct net_device {int flags; } ;


 int IFF_PROMISC ;
 int PAS_MAC_CFG_PCFG ;
 unsigned int PAS_MAC_CFG_PCFG_PR ;
 struct pasemi_mac* netdev_priv (struct net_device*) ;
 unsigned int read_mac_reg (struct pasemi_mac const*,int ) ;
 int write_mac_reg (struct pasemi_mac const*,int ,unsigned int) ;

__attribute__((used)) static void pasemi_mac_set_rx_mode(struct net_device *dev)
{
 const struct pasemi_mac *mac = netdev_priv(dev);
 unsigned int flags;

 flags = read_mac_reg(mac, PAS_MAC_CFG_PCFG);


 if (dev->flags & IFF_PROMISC)
  flags |= PAS_MAC_CFG_PCFG_PR;
 else
  flags &= ~PAS_MAC_CFG_PCFG_PR;

 write_mac_reg(mac, PAS_MAC_CFG_PCFG, flags);
}
