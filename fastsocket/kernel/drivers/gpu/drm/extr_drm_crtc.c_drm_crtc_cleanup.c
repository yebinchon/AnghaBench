
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc {int head; int base; int * gamma_store; struct drm_device* dev; } ;


 int drm_mode_object_put (struct drm_device*,int *) ;
 int kfree (int *) ;
 int list_del (int *) ;

void drm_crtc_cleanup(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;

 kfree(crtc->gamma_store);
 crtc->gamma_store = ((void*)0);

 drm_mode_object_put(dev, &crtc->base);
 list_del(&crtc->head);
 dev->mode_config.num_crtc--;
}
