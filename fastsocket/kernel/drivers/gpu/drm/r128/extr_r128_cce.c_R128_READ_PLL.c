
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
typedef int drm_r128_private_t ;


 int R128_CLOCK_CNTL_DATA ;
 int R128_CLOCK_CNTL_INDEX ;
 int R128_READ (int ) ;
 int R128_WRITE8 (int ,int) ;

__attribute__((used)) static int R128_READ_PLL(struct drm_device *dev, int addr)
{
 drm_r128_private_t *dev_priv = dev->dev_private;

 R128_WRITE8(R128_CLOCK_CNTL_INDEX, addr & 0x1f);
 return R128_READ(R128_CLOCK_CNTL_DATA);
}
