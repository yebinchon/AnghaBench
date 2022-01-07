
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd32 (struct nouveau_device*,int) ;

__attribute__((used)) static bool
nva3_pm_grcp_idle(void *data)
{
 struct drm_device *dev = data;
 struct nouveau_device *device = nouveau_dev(dev);

 if (!(nv_rd32(device, 0x400304) & 0x00000001))
  return 1;
 if (nv_rd32(device, 0x400308) == 0x0050001c)
  return 1;
 return 0;
}
