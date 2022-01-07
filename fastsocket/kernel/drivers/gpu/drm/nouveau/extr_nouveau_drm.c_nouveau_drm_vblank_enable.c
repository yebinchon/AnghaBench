
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct nouveau_disp {TYPE_1__* vblank; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int index_nr; } ;


 int EIO ;
 struct nouveau_disp* nouveau_disp (int ) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_event_enable_locked (TYPE_1__*,int) ;

__attribute__((used)) static int
nouveau_drm_vblank_enable(struct drm_device *dev, int head)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_disp *pdisp = nouveau_disp(drm->device);

 if (head >= pdisp->vblank->index_nr)
  return -EIO;
 nouveau_event_enable_locked(pdisp->vblank, head);
 return 0;
}
