
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct atl1c_hw {int dummy; } ;


 int AT_READ_REG (struct atl1c_hw*,scalar_t__,scalar_t__*) ;
 scalar_t__ REG_MAC_STA_ADDR ;
 scalar_t__ htonl (scalar_t__) ;
 int htons (int ) ;
 int is_valid_ether_addr (int *) ;

__attribute__((used)) static bool atl1c_read_current_addr(struct atl1c_hw *hw, u8 *eth_addr)
{
 u32 addr[2];

 AT_READ_REG(hw, REG_MAC_STA_ADDR, &addr[0]);
 AT_READ_REG(hw, REG_MAC_STA_ADDR + 4, &addr[1]);

 *(u32 *) &eth_addr[2] = htonl(addr[0]);
 *(u16 *) &eth_addr[0] = htons((u16)addr[1]);

 return is_valid_ether_addr(eth_addr);
}
