
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int head; } ;
struct drm_connector {int dev; } ;


 int drm_mode_destroy (int ,struct drm_display_mode*) ;
 int list_del (int *) ;

void drm_mode_remove(struct drm_connector *connector,
       struct drm_display_mode *mode)
{
 list_del(&mode->head);
 drm_mode_destroy(connector->dev, mode);
}
