
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ks8695_priv {int msg_enable; } ;


 struct ks8695_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
ks8695_get_msglevel(struct net_device *ndev)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);

 return ksp->msg_enable;
}
