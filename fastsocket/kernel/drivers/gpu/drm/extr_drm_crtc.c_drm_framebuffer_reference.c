
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_framebuffer {int refcount; TYPE_1__ base; } ;


 int DRM_DEBUG (char*,int ) ;
 int kref_get (int *) ;

void drm_framebuffer_reference(struct drm_framebuffer *fb)
{
 DRM_DEBUG("FB ID: %d\n", fb->base.id);
 kref_get(&fb->refcount);
}
