
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct de_private {int msg_enable; } ;


 struct de_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 de_get_msglevel(struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);

 return de->msg_enable;
}
