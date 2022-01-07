
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1e_adapter {int hw; } ;


 int MDIO_REG_ADDR_MASK ;
 int atl1e_write_phy_reg (int *,int,int) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1e_mdio_write(struct net_device *netdev, int phy_id,
        int reg_num, int val)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);

 atl1e_write_phy_reg(&adapter->hw, reg_num & MDIO_REG_ADDR_MASK, val);
}
