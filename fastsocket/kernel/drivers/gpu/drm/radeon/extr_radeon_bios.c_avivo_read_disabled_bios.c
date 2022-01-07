
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int AVIVO_D1VGA_CONTROL ;
 int AVIVO_D2VGA_CONTROL ;
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ;
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ;
 int AVIVO_VGA_RENDER_CONTROL ;
 int AVIVO_VGA_VSTATUS_CNTL_MASK ;
 int RADEON_GPIOPAD_A ;
 int RADEON_GPIOPAD_EN ;
 int RADEON_GPIOPAD_MASK ;
 int RADEON_SCK_PRESCALE_MASK ;
 int RADEON_SCK_PRESCALE_SHIFT ;
 int RADEON_SEPROM_CNTL1 ;
 int RADEON_VIPH_CONTROL ;
 int RADEON_VIPH_EN ;
 int RREG32 (int ) ;
 int RV370_BUS_BIOS_DIS_ROM ;
 int RV370_BUS_CNTL ;
 int WREG32 (int ,int) ;
 int radeon_read_bios (struct radeon_device*) ;

__attribute__((used)) static bool avivo_read_disabled_bios(struct radeon_device *rdev)
{
 uint32_t seprom_cntl1;
 uint32_t viph_control;
 uint32_t bus_cntl;
 uint32_t d1vga_control;
 uint32_t d2vga_control;
 uint32_t vga_render_control;
 uint32_t gpiopad_a;
 uint32_t gpiopad_en;
 uint32_t gpiopad_mask;
 bool r;

 seprom_cntl1 = RREG32(RADEON_SEPROM_CNTL1);
 viph_control = RREG32(RADEON_VIPH_CONTROL);
 bus_cntl = RREG32(RV370_BUS_CNTL);
 d1vga_control = RREG32(AVIVO_D1VGA_CONTROL);
 d2vga_control = RREG32(AVIVO_D2VGA_CONTROL);
 vga_render_control = RREG32(AVIVO_VGA_RENDER_CONTROL);
 gpiopad_a = RREG32(RADEON_GPIOPAD_A);
 gpiopad_en = RREG32(RADEON_GPIOPAD_EN);
 gpiopad_mask = RREG32(RADEON_GPIOPAD_MASK);

 WREG32(RADEON_SEPROM_CNTL1,
        ((seprom_cntl1 & ~RADEON_SCK_PRESCALE_MASK) |
  (0xc << RADEON_SCK_PRESCALE_SHIFT)));
 WREG32(RADEON_GPIOPAD_A, 0);
 WREG32(RADEON_GPIOPAD_EN, 0);
 WREG32(RADEON_GPIOPAD_MASK, 0);


 WREG32(RADEON_VIPH_CONTROL, (viph_control & ~RADEON_VIPH_EN));


 WREG32(RV370_BUS_CNTL, (bus_cntl & ~RV370_BUS_BIOS_DIS_ROM));


 WREG32(AVIVO_D1VGA_CONTROL,
        (d1vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
  AVIVO_DVGA_CONTROL_TIMING_SELECT)));
 WREG32(AVIVO_D2VGA_CONTROL,
        (d2vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
  AVIVO_DVGA_CONTROL_TIMING_SELECT)));
 WREG32(AVIVO_VGA_RENDER_CONTROL,
        (vga_render_control & ~AVIVO_VGA_VSTATUS_CNTL_MASK));

 r = radeon_read_bios(rdev);


 WREG32(RADEON_SEPROM_CNTL1, seprom_cntl1);
 WREG32(RADEON_VIPH_CONTROL, viph_control);
 WREG32(RV370_BUS_CNTL, bus_cntl);
 WREG32(AVIVO_D1VGA_CONTROL, d1vga_control);
 WREG32(AVIVO_D2VGA_CONTROL, d2vga_control);
 WREG32(AVIVO_VGA_RENDER_CONTROL, vga_render_control);
 WREG32(RADEON_GPIOPAD_A, gpiopad_a);
 WREG32(RADEON_GPIOPAD_EN, gpiopad_en);
 WREG32(RADEON_GPIOPAD_MASK, gpiopad_mask);
 return r;
}
