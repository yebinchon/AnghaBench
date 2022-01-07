
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int * curr_mac_addr; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT3 (char*,int ,int ,int ) ;
 int IXGB_RAR_ENTRIES ;
 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,int,int ) ;
 int RA ;
 int ixgb_get_ee_mac_addr (struct ixgb_hw*,int *) ;
 int ixgb_rar_set (struct ixgb_hw*,int *,int ) ;
 int mac_addr_valid (int *) ;

__attribute__((used)) static void
ixgb_init_rx_addrs(struct ixgb_hw *hw)
{
 u32 i;

 DEBUGFUNC("ixgb_init_rx_addrs");






 if (!mac_addr_valid(hw->curr_mac_addr)) {


  ixgb_get_ee_mac_addr(hw, hw->curr_mac_addr);

  DEBUGOUT3(" Keeping Permanent MAC Addr =%.2X %.2X %.2X ",
     hw->curr_mac_addr[0],
     hw->curr_mac_addr[1], hw->curr_mac_addr[2]);
  DEBUGOUT3("%.2X %.2X %.2X\n",
     hw->curr_mac_addr[3],
     hw->curr_mac_addr[4], hw->curr_mac_addr[5]);
 } else {


  DEBUGOUT("Overriding MAC Address in RAR[0]\n");
  DEBUGOUT3(" New MAC Addr =%.2X %.2X %.2X ",
     hw->curr_mac_addr[0],
     hw->curr_mac_addr[1], hw->curr_mac_addr[2]);
  DEBUGOUT3("%.2X %.2X %.2X\n",
     hw->curr_mac_addr[3],
     hw->curr_mac_addr[4], hw->curr_mac_addr[5]);

  ixgb_rar_set(hw, hw->curr_mac_addr, 0);
 }


 DEBUGOUT("Clearing RAR[1-15]\n");
 for (i = 1; i < IXGB_RAR_ENTRIES; i++) {

  IXGB_WRITE_REG_ARRAY(hw, RA, ((i << 1) + 1), 0);
  IXGB_WRITE_REG_ARRAY(hw, RA, (i << 1), 0);
 }

 return;
}
