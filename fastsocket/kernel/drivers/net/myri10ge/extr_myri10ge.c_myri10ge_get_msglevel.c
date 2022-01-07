
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct myri10ge_priv {int msg_enable; } ;


 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 myri10ge_get_msglevel(struct net_device *netdev)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);
 return mgp->msg_enable;
}
