
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int __le32 ;
typedef int __le16 ;


 int bfin_write_EMAC_ADDRHI (int ) ;
 int bfin_write_EMAC_ADDRLO (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void setup_mac_addr(u8 *mac_addr)
{
 u32 addr_low = le32_to_cpu(*(__le32 *) & mac_addr[0]);
 u16 addr_hi = le16_to_cpu(*(__le16 *) & mac_addr[4]);


 bfin_write_EMAC_ADDRLO(addr_low);
 bfin_write_EMAC_ADDRHI(addr_hi);
}
