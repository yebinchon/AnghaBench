
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd32 (struct nouveau_device*,int ) ;

__attribute__((used)) static inline uint32_t nv_read_ptv(struct drm_device *dev, uint32_t reg)
{
 struct nouveau_device *device = nouveau_dev(dev);
 return nv_rd32(device, reg);
}
