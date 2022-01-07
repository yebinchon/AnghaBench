
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_eth_private {int duplex; struct phy_device* phydev; scalar_t__ speed; int link; int phy_id; TYPE_1__* mii_bus; } ;
struct phy_device {TYPE_2__* drv; int addr; } ;
struct net_device {int dev; } ;
typedef int phy_id ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int id; } ;


 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 int PHY_DOWN ;
 char* PHY_ID_FMT ;
 int PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (struct phy_device*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int ) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 struct phy_device* phy_connect (struct net_device*,char*,int *,int ,int ) ;
 int sh_eth_adjust_link ;
 int snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static int sh_eth_phy_init(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 char phy_id[MII_BUS_ID_SIZE + 3];
 struct phy_device *phydev = ((void*)0);

 snprintf(phy_id, sizeof(phy_id), PHY_ID_FMT,
  mdp->mii_bus->id , mdp->phy_id);

 mdp->link = PHY_DOWN;
 mdp->speed = 0;
 mdp->duplex = -1;


 phydev = phy_connect(ndev, phy_id, &sh_eth_adjust_link,
    0, PHY_INTERFACE_MODE_MII);
 if (IS_ERR(phydev)) {
  dev_err(&ndev->dev, "phy_connect failed\n");
  return PTR_ERR(phydev);
 }

 dev_info(&ndev->dev, "attached phy %i to driver %s\n",
  phydev->addr, phydev->drv->name);

 mdp->phydev = phydev;

 return 0;
}
