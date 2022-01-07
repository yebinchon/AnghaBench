
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_P2PLL_ATOMIC_UPDATE_R ;
 int RADEON_P2PLL_ATOMIC_UPDATE_W ;
 int RADEON_P2PLL_REF_DIV ;
 int RREG32_PLL (int ) ;
 int WREG32_PLL_P (int ,int ,int ) ;

__attribute__((used)) static void radeon_pll2_write_update(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;

 while (RREG32_PLL(RADEON_P2PLL_REF_DIV) & RADEON_P2PLL_ATOMIC_UPDATE_R);

 WREG32_PLL_P(RADEON_P2PLL_REF_DIV,
      RADEON_P2PLL_ATOMIC_UPDATE_W,
      ~(RADEON_P2PLL_ATOMIC_UPDATE_W));
}
