
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_hw {int dummy; } ;
struct atl1e_adapter {int mdio_lock; struct atl1e_hw hw; } ;


 int atl1e_restart_autoneg (struct atl1e_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atl1e_phy_config(unsigned long data)
{
 struct atl1e_adapter *adapter = (struct atl1e_adapter *) data;
 struct atl1e_hw *hw = &adapter->hw;
 unsigned long flags;

 spin_lock_irqsave(&adapter->mdio_lock, flags);
 atl1e_restart_autoneg(hw);
 spin_unlock_irqrestore(&adapter->mdio_lock, flags);
}
