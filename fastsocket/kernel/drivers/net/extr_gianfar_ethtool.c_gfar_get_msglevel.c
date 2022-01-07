
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct net_device {int dummy; } ;
struct gfar_private {int msg_enable; } ;


 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static uint32_t gfar_get_msglevel(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 return priv->msg_enable;
}
