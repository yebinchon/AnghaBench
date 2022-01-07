
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_hw {int dummy; } ;
struct atl1c_adapter {int mdio_lock; struct atl1c_hw hw; } ;


 int atl1c_restart_autoneg (struct atl1c_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atl1c_phy_config(unsigned long data)
{
 struct atl1c_adapter *adapter = (struct atl1c_adapter *) data;
 struct atl1c_hw *hw = &adapter->hw;
 unsigned long flags;

 spin_lock_irqsave(&adapter->mdio_lock, flags);
 atl1c_restart_autoneg(hw);
 spin_unlock_irqrestore(&adapter->mdio_lock, flags);
}
