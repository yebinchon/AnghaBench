
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int register_size; } ;


 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nv_get_regs_len(struct net_device *dev)
{
 struct fe_priv *np = netdev_priv(dev);
 return np->register_size;
}
