
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int board_info_t ;


 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static inline board_info_t *to_dm9000_board(struct net_device *dev)
{
 return netdev_priv(dev);
}
