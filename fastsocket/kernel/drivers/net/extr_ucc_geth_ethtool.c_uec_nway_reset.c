
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {int phydev; } ;
struct net_device {int dummy; } ;


 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int phy_start_aneg (int ) ;

__attribute__((used)) static int uec_nway_reset(struct net_device *netdev)
{
 struct ucc_geth_private *ugeth = netdev_priv(netdev);

 return phy_start_aneg(ugeth->phydev);
}
