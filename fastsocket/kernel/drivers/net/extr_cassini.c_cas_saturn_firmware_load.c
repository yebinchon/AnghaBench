
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int fw_load_addr; int fw_size; int* fw_data; } ;


 int DP83065_MII_MEM ;
 int DP83065_MII_REGD ;
 int DP83065_MII_REGE ;
 int cas_phy_powerdown (struct cas*) ;
 int cas_phy_write (struct cas*,int ,int) ;

__attribute__((used)) static void cas_saturn_firmware_load(struct cas *cp)
{
 int i;

 cas_phy_powerdown(cp);


 cas_phy_write(cp, DP83065_MII_MEM, 0x0);


 cas_phy_write(cp, DP83065_MII_REGE, 0x8ff9);
 cas_phy_write(cp, DP83065_MII_REGD, 0xbd);
 cas_phy_write(cp, DP83065_MII_REGE, 0x8ffa);
 cas_phy_write(cp, DP83065_MII_REGD, 0x82);
 cas_phy_write(cp, DP83065_MII_REGE, 0x8ffb);
 cas_phy_write(cp, DP83065_MII_REGD, 0x0);
 cas_phy_write(cp, DP83065_MII_REGE, 0x8ffc);
 cas_phy_write(cp, DP83065_MII_REGD, 0x39);


 cas_phy_write(cp, DP83065_MII_MEM, 0x1);
 cas_phy_write(cp, DP83065_MII_REGE, cp->fw_load_addr);
 for (i = 0; i < cp->fw_size; i++)
  cas_phy_write(cp, DP83065_MII_REGD, cp->fw_data[i]);


 cas_phy_write(cp, DP83065_MII_REGE, 0x8ff8);
 cas_phy_write(cp, DP83065_MII_REGD, 0x1);
}
