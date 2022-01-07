
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ num_tx_rings_p_up; } ;


 int EINVAL ;
 int MLX4_EN_NUM_UP ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int netdev_set_num_tc (struct net_device*,int) ;
 int netdev_set_tc_queue (struct net_device*,int,scalar_t__,unsigned int) ;

int mlx4_en_setup_tc(struct net_device *dev, u8 up)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int i;
 unsigned int offset = 0;

 if (up && up != MLX4_EN_NUM_UP)
  return -EINVAL;

 netdev_set_num_tc(dev, up);


 for (i = 0; i < up; i++) {
  netdev_set_tc_queue(dev, i, priv->num_tx_rings_p_up, offset);
  offset += priv->num_tx_rings_p_up;
 }

 return 0;
}
