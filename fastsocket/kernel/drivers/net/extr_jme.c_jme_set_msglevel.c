
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int msg_enable; } ;


 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
jme_set_msglevel(struct net_device *netdev, u32 value)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 jme->msg_enable = value;
}
