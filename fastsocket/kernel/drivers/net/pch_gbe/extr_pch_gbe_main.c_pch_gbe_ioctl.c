
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int pch_gbe_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 pr_debug("cmd : 0x%04x\n", cmd);

 return generic_mii_ioctl(&adapter->mii, if_mii(ifr), cmd, ((void*)0));
}
