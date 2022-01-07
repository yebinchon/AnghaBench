
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_private {int phy; } ;
struct ethtool_cmd {int advertising; int supported; } ;


 int ADVERTISED_1000baseT_Half ;
 int SUPPORTED_1000baseT_Half ;
 int phy_ethtool_gset (int ,struct ethtool_cmd*) ;
 int phy_read_status (int ) ;

__attribute__((used)) static int
mv643xx_eth_get_settings_phy(struct mv643xx_eth_private *mp,
        struct ethtool_cmd *cmd)
{
 int err;

 err = phy_read_status(mp->phy);
 if (err == 0)
  err = phy_ethtool_gset(mp->phy, cmd);




 cmd->supported &= ~SUPPORTED_1000baseT_Half;
 cmd->advertising &= ~ADVERTISED_1000baseT_Half;

 return err;
}
