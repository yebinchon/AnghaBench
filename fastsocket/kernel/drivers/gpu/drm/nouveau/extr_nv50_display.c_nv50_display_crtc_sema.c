
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_bo {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_bo* sync; } ;


 TYPE_1__* nv50_disp (struct drm_device*) ;

struct nouveau_bo *
nv50_display_crtc_sema(struct drm_device *dev, int crtc)
{
 return nv50_disp(dev)->sync;
}
