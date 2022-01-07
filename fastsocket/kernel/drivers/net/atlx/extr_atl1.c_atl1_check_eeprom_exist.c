
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1_hw {scalar_t__ hw_addr; } ;


 scalar_t__ REG_PCIE_CAP_LIST ;
 scalar_t__ REG_SPI_FLASH_CTRL ;
 int SPI_FLASH_CTRL_EN_VPD ;
 int ioread16 (scalar_t__) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static int atl1_check_eeprom_exist(struct atl1_hw *hw)
{
 u32 value;
 value = ioread32(hw->hw_addr + REG_SPI_FLASH_CTRL);
 if (value & SPI_FLASH_CTRL_EN_VPD) {
  value &= ~SPI_FLASH_CTRL_EN_VPD;
  iowrite32(value, hw->hw_addr + REG_SPI_FLASH_CTRL);
 }

 value = ioread16(hw->hw_addr + REG_PCIE_CAP_LIST);
 return ((value & 0xFF00) == 0x6C00) ? 0 : 1;
}
