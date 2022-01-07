
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct slave {int duplex; scalar_t__ speed; struct net_device* dev; } ;
struct net_device {TYPE_1__* ethtool_ops; } ;
struct ethtool_cmd {int duplex; int cmd; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int (* get_settings ) (struct net_device*,struct ethtool_cmd*) ;} ;




 int DUPLEX_UNKNOWN ;
 int ETHTOOL_GSET ;
 scalar_t__ SPEED_UNKNOWN ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int stub1 (struct net_device*,struct ethtool_cmd*) ;

__attribute__((used)) static int bond_update_speed_duplex(struct slave *slave)
{
 struct net_device *slave_dev = slave->dev;
 struct ethtool_cmd etool = { .cmd = ETHTOOL_GSET };
 u32 slave_speed;
 int res;

 slave->speed = SPEED_UNKNOWN;
 slave->duplex = DUPLEX_UNKNOWN;

 if (!slave_dev->ethtool_ops || !slave_dev->ethtool_ops->get_settings)
  return -1;

 res = slave_dev->ethtool_ops->get_settings(slave_dev, &etool);
 if (res < 0)
  return -1;

 slave_speed = ethtool_cmd_speed(&etool);
 if (slave_speed == 0 || slave_speed == ((__u32) -1))
  return -1;

 switch (etool.duplex) {
 case 129:
 case 128:
  break;
 default:
  return -1;
 }

 slave->speed = slave_speed;
 slave->duplex = etool.duplex;

 return 0;
}
