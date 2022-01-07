
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int RADEON_CFG_VGA_IO_DIS ;
 int RADEON_CFG_VGA_RAM_EN ;
 int RADEON_CONFIG_CNTL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void r100_vga_set_state(struct radeon_device *rdev, bool state)
{
 uint32_t temp;

 temp = RREG32(RADEON_CONFIG_CNTL);
 if (state == 0) {
  temp &= ~RADEON_CFG_VGA_RAM_EN;
  temp |= RADEON_CFG_VGA_IO_DIS;
 } else {
  temp &= ~RADEON_CFG_VGA_IO_DIS;
 }
 WREG32(RADEON_CONFIG_CNTL, temp);
}
