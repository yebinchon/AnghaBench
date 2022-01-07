
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int dummy; } ;


 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct fe_priv *get_nvpriv(struct net_device *dev)
{
 return netdev_priv(dev);
}
