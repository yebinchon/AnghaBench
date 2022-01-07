
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int msg_enable; } ;


 struct cas* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cas_set_msglevel(struct net_device *dev, u32 value)
{
 struct cas *cp = netdev_priv(dev);
 cp->msg_enable = value;
}
