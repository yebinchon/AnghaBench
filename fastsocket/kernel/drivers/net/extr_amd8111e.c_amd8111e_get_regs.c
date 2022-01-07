
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_regs {scalar_t__ version; } ;
struct amd8111e_priv {int dummy; } ;


 int amd8111e_read_regs (struct amd8111e_priv*,void*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void amd8111e_get_regs(struct net_device *dev, struct ethtool_regs *regs, void *buf)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 regs->version = 0;
 amd8111e_read_regs(lp, buf);
}
