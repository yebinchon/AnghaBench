
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl2_hw {int dummy; } ;


 int ATL2_READ_REG (struct atl2_hw*,int ) ;
 int ATL2_READ_REGW (struct atl2_hw*,int ) ;
 int ATL2_WRITE_REG (struct atl2_hw*,int ,int) ;
 int REG_PCIE_CAP_LIST ;
 int REG_SPI_FLASH_CTRL ;
 int SPI_FLASH_CTRL_EN_VPD ;

__attribute__((used)) static int atl2_check_eeprom_exist(struct atl2_hw *hw)
{
 u32 value;

 value = ATL2_READ_REG(hw, REG_SPI_FLASH_CTRL);
 if (value & SPI_FLASH_CTRL_EN_VPD) {
  value &= ~SPI_FLASH_CTRL_EN_VPD;
  ATL2_WRITE_REG(hw, REG_SPI_FLASH_CTRL, value);
 }
 value = ATL2_READ_REGW(hw, REG_PCIE_CAP_LIST);
 return ((value & 0xFF00) == 0x6C00) ? 0 : 1;
}
