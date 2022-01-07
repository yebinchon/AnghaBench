
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct atl1e_adapter {int hw; } ;


 int MDIO_REG_ADDR_MASK ;
 int atl1e_read_phy_reg (int *,int,int*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl1e_mdio_read(struct net_device *netdev, int phy_id, int reg_num)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);
 u16 result;

 atl1e_read_phy_reg(&adapter->hw, reg_num & MDIO_REG_ADDR_MASK, &result);
 return result;
}
