
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int idle_fault; scalar_t__ chipset; int * mmio; } ;
typedef TYPE_1__ drm_sis_private_t ;


 int DRM_ERROR (char*) ;
 int DRM_HZ ;
 scalar_t__ SIS_CHIP_315 ;
 int SIS_READ (int) ;
 int jiffies ;
 int * sis_reg_init (struct drm_device*) ;
 scalar_t__ time_after_eq (int,unsigned long) ;

int sis_idle(struct drm_device *dev)
{
 drm_sis_private_t *dev_priv = dev->dev_private;
 uint32_t idle_reg;
 unsigned long end;
 int i;

 if (dev_priv->idle_fault)
  return 0;

 if (dev_priv->mmio == ((void*)0)) {
  dev_priv->mmio = sis_reg_init(dev);
  if (dev_priv->mmio == ((void*)0)) {
   DRM_ERROR("Could not find register map.\n");
   return 0;
  }
 }





 if (dev_priv->chipset != SIS_CHIP_315)
  return 0;






 end = jiffies + (DRM_HZ * 3);

 for (i = 0; i < 4; ++i) {
  do {
   idle_reg = SIS_READ(0x85cc);
  } while (!time_after_eq(jiffies, end) &&
     ((idle_reg & 0x80000000) != 0x80000000));
 }

 if (time_after_eq(jiffies, end)) {
  DRM_ERROR("Graphics engine idle timeout. "
     "Disabling idle check\n");
  dev_priv->idle_fault = 1;
 }






 return 0;
}
