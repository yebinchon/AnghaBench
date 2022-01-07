
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {unsigned int device; unsigned int subsystem_vendor; unsigned int subsystem_device; } ;



__attribute__((used)) static inline bool
nv_match_device(struct drm_device *dev, unsigned device,
  unsigned sub_vendor, unsigned sub_device)
{
 return dev->pdev->device == device &&
  dev->pdev->subsystem_vendor == sub_vendor &&
  dev->pdev->subsystem_device == sub_device;
}
