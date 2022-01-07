
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct skge_port {scalar_t__ rx_csum; TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;


 scalar_t__ CHIP_ID_GENESIS ;
 int EOPNOTSUPP ;
 struct skge_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int skge_set_rx_csum(struct net_device *dev, u32 data)
{
 struct skge_port *skge = netdev_priv(dev);

 if (skge->hw->chip_id == CHIP_ID_GENESIS && data)
  return -EOPNOTSUPP;

 skge->rx_csum = data;
 return 0;
}
