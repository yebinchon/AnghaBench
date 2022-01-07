
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct spider_net_card {TYPE_1__ phy; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; int duplex; int speed; int port; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_FIBRE ;
 int DUPLEX_FULL ;
 int PORT_FIBRE ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_FIBRE ;
 struct spider_net_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
spider_net_ethtool_get_settings(struct net_device *netdev,
          struct ethtool_cmd *cmd)
{
 struct spider_net_card *card;
 card = netdev_priv(netdev);

 cmd->supported = (SUPPORTED_1000baseT_Full |
        SUPPORTED_FIBRE);
 cmd->advertising = (ADVERTISED_1000baseT_Full |
        ADVERTISED_FIBRE);
 cmd->port = PORT_FIBRE;
 cmd->speed = card->phy.speed;
 cmd->duplex = DUPLEX_FULL;

 return 0;
}
