
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct nes_device {int dummy; } ;


 int nes_read_1G_phy_reg (struct nes_device*,int,int ,int*) ;
 int nes_write_1G_phy_reg (struct nes_device*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int nes_init_1g_phy(struct nes_device *nesdev, u8 phy_type, u8 phy_index)
{
 u32 counter = 0;
 u16 phy_data;
 int ret = 0;

 nes_read_1G_phy_reg(nesdev, 1, phy_index, &phy_data);
 nes_write_1G_phy_reg(nesdev, 23, phy_index, 0xb000);


 nes_write_1G_phy_reg(nesdev, 0, phy_index, 0x8000);
 udelay(100);
 counter = 0;
 do {
  nes_read_1G_phy_reg(nesdev, 0, phy_index, &phy_data);
  if (counter++ > 100) {
   ret = -1;
   break;
  }
 } while (phy_data & 0x8000);


 phy_data &= 0xbfff;
 phy_data |= 0x1140;
 nes_write_1G_phy_reg(nesdev, 0, phy_index, phy_data);
 nes_read_1G_phy_reg(nesdev, 0, phy_index, &phy_data);
 nes_read_1G_phy_reg(nesdev, 0x17, phy_index, &phy_data);
 nes_read_1G_phy_reg(nesdev, 0x1e, phy_index, &phy_data);


 nes_read_1G_phy_reg(nesdev, 0x19, phy_index, &phy_data);
 nes_write_1G_phy_reg(nesdev, 0x19, phy_index, 0xffee);
 nes_read_1G_phy_reg(nesdev, 0x19, phy_index, &phy_data);


 nes_read_1G_phy_reg(nesdev, 4, phy_index, &phy_data);
 nes_write_1G_phy_reg(nesdev, 4, phy_index, (phy_data & ~(0x03E0)) | 0xc00);
 nes_read_1G_phy_reg(nesdev, 4, phy_index, &phy_data);


 nes_read_1G_phy_reg(nesdev, 9, phy_index, &phy_data);
 nes_write_1G_phy_reg(nesdev, 9, phy_index, phy_data & ~(0x0100));
 nes_read_1G_phy_reg(nesdev, 9, phy_index, &phy_data);

 nes_read_1G_phy_reg(nesdev, 0, phy_index, &phy_data);
 nes_write_1G_phy_reg(nesdev, 0, phy_index, phy_data | 0x0300);

 return ret;
}
