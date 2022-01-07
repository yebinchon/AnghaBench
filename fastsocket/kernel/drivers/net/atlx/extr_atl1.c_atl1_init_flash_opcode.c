
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct atl1_hw {size_t flash_vendor; scalar_t__ hw_addr; } ;
struct TYPE_3__ {int cmd_read; int cmd_wrsr; int cmd_rdsr; int cmd_wren; int cmd_rdid; int cmd_chip_erase; int cmd_sector_erase; int cmd_program; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ REG_SPI_FLASH_OP_CHIP_ERASE ;
 scalar_t__ REG_SPI_FLASH_OP_PROGRAM ;
 scalar_t__ REG_SPI_FLASH_OP_RDID ;
 scalar_t__ REG_SPI_FLASH_OP_RDSR ;
 scalar_t__ REG_SPI_FLASH_OP_READ ;
 scalar_t__ REG_SPI_FLASH_OP_SC_ERASE ;
 scalar_t__ REG_SPI_FLASH_OP_WREN ;
 scalar_t__ REG_SPI_FLASH_OP_WRSR ;
 TYPE_1__* flash_table ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void atl1_init_flash_opcode(struct atl1_hw *hw)
{
 if (hw->flash_vendor >= ARRAY_SIZE(flash_table))

  hw->flash_vendor = 0;


 iowrite8(flash_table[hw->flash_vendor].cmd_program,
  hw->hw_addr + REG_SPI_FLASH_OP_PROGRAM);
 iowrite8(flash_table[hw->flash_vendor].cmd_sector_erase,
  hw->hw_addr + REG_SPI_FLASH_OP_SC_ERASE);
 iowrite8(flash_table[hw->flash_vendor].cmd_chip_erase,
  hw->hw_addr + REG_SPI_FLASH_OP_CHIP_ERASE);
 iowrite8(flash_table[hw->flash_vendor].cmd_rdid,
  hw->hw_addr + REG_SPI_FLASH_OP_RDID);
 iowrite8(flash_table[hw->flash_vendor].cmd_wren,
  hw->hw_addr + REG_SPI_FLASH_OP_WREN);
 iowrite8(flash_table[hw->flash_vendor].cmd_rdsr,
  hw->hw_addr + REG_SPI_FLASH_OP_RDSR);
 iowrite8(flash_table[hw->flash_vendor].cmd_wrsr,
  hw->hw_addr + REG_SPI_FLASH_OP_WRSR);
 iowrite8(flash_table[hw->flash_vendor].cmd_read,
  hw->hw_addr + REG_SPI_FLASH_OP_READ);
}
