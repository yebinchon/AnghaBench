
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct TYPE_3__ {int mii; } ;
typedef TYPE_1__ board_info_t ;


 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 TYPE_1__* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 board_info_t *dm = to_dm9000_board(dev);

 return mii_ethtool_sset(&dm->mii, cmd);
}
