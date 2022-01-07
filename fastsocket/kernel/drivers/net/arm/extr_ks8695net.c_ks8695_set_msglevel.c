
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ks8695_priv {int msg_enable; } ;


 struct ks8695_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
ks8695_set_msglevel(struct net_device *ndev, u32 value)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);

 ksp->msg_enable = value;
}
