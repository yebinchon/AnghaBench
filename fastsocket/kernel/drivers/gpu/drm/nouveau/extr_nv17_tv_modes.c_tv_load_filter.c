
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_device {int dummy; } ;


 int nv_write_ptv (struct drm_device*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void tv_load_filter(struct drm_device *dev, uint32_t base,
      uint32_t regs[4][7])
{
 int i, j;
 uint32_t offsets[] = { base, base + 0x1c, base + 0x40, base + 0x5c };

 for (i = 0; i < 4; i++) {
  for (j = 0; j < 7; j++)
   nv_write_ptv(dev, offsets[i]+4*j, regs[i][j]);
 }
}
