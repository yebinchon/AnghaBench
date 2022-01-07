
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IXDP2X01_CPLD_FLASH_INTERN ;
 int IXDP2X01_CPLD_FLASH_REG ;
 unsigned long IXDP2X01_FLASH_WINDOW_BITS ;
 unsigned long IXDP2X01_FLASH_WINDOW_MASK ;
 int ixp2000_reg_wrb (int ,unsigned long) ;

__attribute__((used)) static unsigned long ixdp2x01_flash_bank_setup(unsigned long ofs)
{
 ixp2000_reg_wrb(IXDP2X01_CPLD_FLASH_REG,
  ((ofs >> IXDP2X01_FLASH_WINDOW_BITS) | IXDP2X01_CPLD_FLASH_INTERN));
 return (ofs & IXDP2X01_FLASH_WINDOW_MASK);
}
