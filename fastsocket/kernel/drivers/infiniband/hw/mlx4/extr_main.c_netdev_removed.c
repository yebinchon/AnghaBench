
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int dummy; } ;


 int update_ipv6_gids (struct mlx4_ib_dev*,int,int) ;

__attribute__((used)) static void netdev_removed(struct mlx4_ib_dev *dev, int port)
{
 update_ipv6_gids(dev, port, 1);
}
