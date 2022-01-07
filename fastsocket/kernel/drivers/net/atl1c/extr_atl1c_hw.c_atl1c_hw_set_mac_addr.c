
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct atl1c_hw {int dummy; } ;


 int AT_WRITE_REG_ARRAY (struct atl1c_hw*,int ,int,int) ;
 int REG_MAC_STA_ADDR ;

void atl1c_hw_set_mac_addr(struct atl1c_hw *hw, u8 *mac_addr)
{
 u32 value;





 value = mac_addr[2] << 24 |
  mac_addr[3] << 16 |
  mac_addr[4] << 8 |
  mac_addr[5];
 AT_WRITE_REG_ARRAY(hw, REG_MAC_STA_ADDR, 0, value);

 value = mac_addr[0] << 8 |
  mac_addr[1];
 AT_WRITE_REG_ARRAY(hw, REG_MAC_STA_ADDR, 1, value);
}
