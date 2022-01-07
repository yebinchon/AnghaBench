
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_RS600 ;
 int R500_D1MODE_VBLANK_STATUS ;
 int R500_D1_VBLANK_INTERRUPT ;
 int R500_D2MODE_VBLANK_STATUS ;
 int R500_D2_VBLANK_INTERRUPT ;
 int R500_DISPLAY_INT_STATUS ;
 int R500_DISP_INTERRUPT_STATUS ;
 int R500_VBLANK_ACK ;
 int RADEON_CRTC2_VBLANK_STAT ;
 int RADEON_CRTC_VBLANK_STAT ;
 int RADEON_FAMILY_MASK ;
 int RADEON_GEN_INT_STATUS ;
 int RADEON_READ (int ) ;
 int RADEON_SW_INT_TEST ;
 int RADEON_WRITE (int ,int) ;

__attribute__((used)) static u32 radeon_acknowledge_irqs(drm_radeon_private_t *dev_priv, u32 *r500_disp_int)
{
 u32 irqs = RADEON_READ(RADEON_GEN_INT_STATUS);
 u32 irq_mask = RADEON_SW_INT_TEST;

 *r500_disp_int = 0;
 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RS600) {


  if (irqs & R500_DISPLAY_INT_STATUS) {

   u32 disp_irq;

   disp_irq = RADEON_READ(R500_DISP_INTERRUPT_STATUS);

   *r500_disp_int = disp_irq;
   if (disp_irq & R500_D1_VBLANK_INTERRUPT)
    RADEON_WRITE(R500_D1MODE_VBLANK_STATUS, R500_VBLANK_ACK);
   if (disp_irq & R500_D2_VBLANK_INTERRUPT)
    RADEON_WRITE(R500_D2MODE_VBLANK_STATUS, R500_VBLANK_ACK);
  }
  irq_mask |= R500_DISPLAY_INT_STATUS;
 } else
  irq_mask |= RADEON_CRTC_VBLANK_STAT | RADEON_CRTC2_VBLANK_STAT;

 irqs &= irq_mask;

 if (irqs)
  RADEON_WRITE(RADEON_GEN_INT_STATUS, irqs);

 return irqs;
}
