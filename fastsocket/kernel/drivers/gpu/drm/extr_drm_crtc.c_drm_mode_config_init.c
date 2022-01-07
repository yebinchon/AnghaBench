
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_encoder; scalar_t__ num_crtc; scalar_t__ num_connector; scalar_t__ num_fb; int crtc_idr; int plane_list; int property_blob_list; int property_list; int encoder_list; int connector_list; int crtc_list; int fb_list; int fb_lock; int idr_mutex; int mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int INIT_LIST_HEAD (int *) ;
 int drm_mode_create_standard_connector_properties (struct drm_device*) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 int idr_init (int *) ;
 int mutex_init (int *) ;

void drm_mode_config_init(struct drm_device *dev)
{
 mutex_init(&dev->mode_config.mutex);
 mutex_init(&dev->mode_config.idr_mutex);
 mutex_init(&dev->mode_config.fb_lock);
 INIT_LIST_HEAD(&dev->mode_config.fb_list);
 INIT_LIST_HEAD(&dev->mode_config.crtc_list);
 INIT_LIST_HEAD(&dev->mode_config.connector_list);
 INIT_LIST_HEAD(&dev->mode_config.encoder_list);
 INIT_LIST_HEAD(&dev->mode_config.property_list);
 INIT_LIST_HEAD(&dev->mode_config.property_blob_list);
 INIT_LIST_HEAD(&dev->mode_config.plane_list);
 idr_init(&dev->mode_config.crtc_idr);

 drm_modeset_lock_all(dev);
 drm_mode_create_standard_connector_properties(dev);
 drm_modeset_unlock_all(dev);


 dev->mode_config.num_fb = 0;
 dev->mode_config.num_connector = 0;
 dev->mode_config.num_crtc = 0;
 dev->mode_config.num_encoder = 0;
}
