
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_bus_info {int func; int lan_id; } ;
struct ixgbe_hw {struct ixgbe_bus_info bus; } ;


 int IXGBE_FACTPS ;
 int IXGBE_FACTPS_LFS ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_LAN_ID ;
 int IXGBE_STATUS_LAN_ID_SHIFT ;

void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw)
{
 struct ixgbe_bus_info *bus = &hw->bus;
 u32 reg;

 reg = IXGBE_READ_REG(hw, IXGBE_STATUS);
 bus->func = (reg & IXGBE_STATUS_LAN_ID) >> IXGBE_STATUS_LAN_ID_SHIFT;
 bus->lan_id = bus->func;


 reg = IXGBE_READ_REG(hw, IXGBE_FACTPS);
 if (reg & IXGBE_FACTPS_LFS)
  bus->func ^= 0x1;
}
