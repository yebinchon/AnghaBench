
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int head; int base; struct drm_device* dev; } ;
struct TYPE_2__ {int num_encoder; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_mode_object_put (struct drm_device*,int *) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 int list_del (int *) ;

void drm_encoder_cleanup(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 drm_modeset_lock_all(dev);
 drm_mode_object_put(dev, &encoder->base);
 list_del(&encoder->head);
 dev->mode_config.num_encoder--;
 drm_modeset_unlock_all(dev);
}
