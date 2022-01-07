
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ can_csum; } ;
typedef TYPE_1__ board_info_t ;


 int EOPNOTSUPP ;
 int ethtool_op_set_tx_csum (struct net_device*,int ) ;
 TYPE_1__* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_tx_csum(struct net_device *dev, uint32_t data)
{
 board_info_t *dm = to_dm9000_board(dev);
 int ret = -EOPNOTSUPP;

 if (dm->can_csum)
  ret = ethtool_op_set_tx_csum(dev, data);
 return ret;
}
