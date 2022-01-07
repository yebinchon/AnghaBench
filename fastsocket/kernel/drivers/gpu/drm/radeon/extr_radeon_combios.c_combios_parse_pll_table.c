
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_CG_NO1_DEBUG_0 ;
 int RADEON_CLK_PWRMGT_CNTL ;
 int RADEON_DLL_READY ;
 int RADEON_MCLK_CNTL ;
 int RADEON_MC_BUSY ;
 int RBIOS32 (scalar_t__) ;
 int RBIOS8 (scalar_t__) ;
 int RREG32_PLL (int) ;
 int WREG32_PLL (int,int) ;
 int mdelay (int) ;
 int udelay (int) ;

__attribute__((used)) static void combios_parse_pll_table(struct drm_device *dev, uint16_t offset)
{
 struct radeon_device *rdev = dev->dev_private;

 if (offset) {
  while (RBIOS8(offset)) {
   uint8_t cmd = ((RBIOS8(offset) & 0xc0) >> 6);
   uint8_t addr = (RBIOS8(offset) & 0x3f);
   uint32_t val, shift, tmp;
   uint32_t and_mask, or_mask;

   offset++;
   switch (cmd) {
   case 0:
    val = RBIOS32(offset);
    offset += 4;
    WREG32_PLL(addr, val);
    break;
   case 1:
    shift = RBIOS8(offset) * 8;
    offset++;
    and_mask = RBIOS8(offset) << shift;
    and_mask |= ~(0xff << shift);
    offset++;
    or_mask = RBIOS8(offset) << shift;
    offset++;
    tmp = RREG32_PLL(addr);
    tmp &= and_mask;
    tmp |= or_mask;
    WREG32_PLL(addr, tmp);
    break;
   case 2:
   case 3:
    tmp = 1000;
    switch (addr) {
    case 1:
     udelay(150);
     break;
    case 2:
     mdelay(1);
     break;
    case 3:
     while (tmp--) {
      if (!
          (RREG32_PLL
           (RADEON_CLK_PWRMGT_CNTL) &
           RADEON_MC_BUSY))
       break;
     }
     break;
    case 4:
     while (tmp--) {
      if (RREG32_PLL
          (RADEON_CLK_PWRMGT_CNTL) &
          RADEON_DLL_READY)
       break;
     }
     break;
    case 5:
     tmp =
         RREG32_PLL(RADEON_CLK_PWRMGT_CNTL);
     if (tmp & RADEON_CG_NO1_DEBUG_0) {
      WREG32_PLL
          (RADEON_CLK_PWRMGT_CNTL,
           tmp &
           ~RADEON_CG_NO1_DEBUG_0);
      mdelay(10);
     }
     break;
    default:
     break;
    }
    break;
   default:
    break;
   }
  }
 }
}
