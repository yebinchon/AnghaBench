
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int msg_enable; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 mlx4_en_get_msglevel(struct net_device *dev)
{
 return ((struct mlx4_en_priv *) netdev_priv(dev))->msg_enable;
}
