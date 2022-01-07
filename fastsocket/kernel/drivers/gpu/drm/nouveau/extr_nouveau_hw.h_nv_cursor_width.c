
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 int NV04_CURSOR_SIZE ;
 int NV10_CURSOR_SIZE ;
 scalar_t__ NV_10 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;

__attribute__((used)) static inline int nv_cursor_width(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 return nv_device(drm->device)->card_type >= NV_10 ? NV10_CURSOR_SIZE : NV04_CURSOR_SIZE;
}
