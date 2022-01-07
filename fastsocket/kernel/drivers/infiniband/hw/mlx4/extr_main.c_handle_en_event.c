
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** netdevs; } ;
struct mlx4_ib_dev {TYPE_1__ iboe; } ;





 int update_ipv6_gids (struct mlx4_ib_dev*,int,int) ;

__attribute__((used)) static void handle_en_event(struct mlx4_ib_dev *dev, int port, unsigned long event)
{
 switch (event) {
 case 128:
 case 130:
  update_ipv6_gids(dev, port, 0);
  break;

 case 129:
  update_ipv6_gids(dev, port, 1);
  dev->iboe.netdevs[port - 1] = ((void*)0);
 }
}
