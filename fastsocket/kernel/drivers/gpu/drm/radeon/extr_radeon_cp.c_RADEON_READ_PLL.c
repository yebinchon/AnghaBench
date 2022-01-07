
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
typedef int drm_radeon_private_t ;


 int RADEON_CLOCK_CNTL_DATA ;
 int RADEON_CLOCK_CNTL_INDEX ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE8 (int ,int) ;

__attribute__((used)) static int RADEON_READ_PLL(struct drm_device * dev, int addr)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 RADEON_WRITE8(RADEON_CLOCK_CNTL_INDEX, addr & 0x1f);
 return RADEON_READ(RADEON_CLOCK_CNTL_DATA);
}
