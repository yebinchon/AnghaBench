
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 scalar_t__ NV_04 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;

__attribute__((used)) static inline uint32_t
nv_pitch_align(struct drm_device *dev, uint32_t width, int bpp)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 int mask;

 if (bpp == 15)
  bpp = 16;
 if (bpp == 24)
  bpp = 8;


 if (nv_device(drm->device)->card_type == NV_04)
  mask = 128 / bpp - 1;
 else
  mask = 512 / bpp - 1;

 return (width + mask) & ~mask;
}
