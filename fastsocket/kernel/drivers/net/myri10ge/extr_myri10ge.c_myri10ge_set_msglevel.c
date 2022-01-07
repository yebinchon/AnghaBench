
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct myri10ge_priv {int msg_enable; } ;


 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void myri10ge_set_msglevel(struct net_device *netdev, u32 value)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);
 mgp->msg_enable = value;
}
