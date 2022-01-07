
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u16 ;
struct sis900_private {struct mii_phy* mii; } ;
struct net_device {int if_port; } ;
struct mii_phy {int phy_addr; } ;
struct ifmap {int port; } ;


 int EINVAL ;
 int EOPNOTSUPP ;







 int MII_CNTL_AUTO ;
 int MII_CNTL_RST_AUTO ;
 int MII_CNTL_SPEED ;
 int MII_CONTROL ;
 int mdio_read (struct net_device*,int ,int ) ;
 int mdio_write (struct net_device*,int ,int ,int) ;
 struct sis900_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int sis900_set_config(struct net_device *dev, struct ifmap *map)
{
 struct sis900_private *sis_priv = netdev_priv(dev);
 struct mii_phy *mii_phy = sis_priv->mii;

 u16 status;

 if ((map->port != (u_char)(-1)) && (map->port != dev->if_port)) {






  switch(map->port){
  case 128:
   dev->if_port = map->port;





   netif_carrier_off(dev);


   status = mdio_read(dev, mii_phy->phy_addr, MII_CONTROL);





   mdio_write(dev, mii_phy->phy_addr,
       MII_CONTROL, status | MII_CNTL_AUTO | MII_CNTL_RST_AUTO);

   break;

  case 130:
   dev->if_port = map->port;






   netif_carrier_off(dev);



   status = mdio_read(dev, mii_phy->phy_addr, MII_CONTROL);


   mdio_write(dev, mii_phy->phy_addr,
       MII_CONTROL, status & ~(MII_CNTL_SPEED |
     MII_CNTL_AUTO));
   break;

  case 133:
  case 132:
   dev->if_port = map->port;






   netif_carrier_off(dev);



   status = mdio_read(dev, mii_phy->phy_addr, MII_CONTROL);
   mdio_write(dev, mii_phy->phy_addr,
       MII_CONTROL, (status & ~MII_CNTL_SPEED) |
       MII_CNTL_SPEED);

   break;

  case 131:
  case 129:
  case 134:

   return -EOPNOTSUPP;
   break;

  default:
   return -EINVAL;
  }
 }
 return 0;
}
