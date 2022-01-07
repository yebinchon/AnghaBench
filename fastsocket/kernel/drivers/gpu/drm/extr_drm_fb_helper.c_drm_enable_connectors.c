
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_fb_helper {int connector_count; TYPE_2__** connector_info; } ;
struct TYPE_3__ {int id; } ;
struct drm_connector {TYPE_1__ base; } ;
struct TYPE_4__ {struct drm_connector* connector; } ;


 int DRM_DEBUG_KMS (char*,int ,char*) ;
 int drm_connector_enabled (struct drm_connector*,int) ;

__attribute__((used)) static void drm_enable_connectors(struct drm_fb_helper *fb_helper,
      bool *enabled)
{
 bool any_enabled = 0;
 struct drm_connector *connector;
 int i = 0;

 for (i = 0; i < fb_helper->connector_count; i++) {
  connector = fb_helper->connector_info[i]->connector;
  enabled[i] = drm_connector_enabled(connector, 1);
  DRM_DEBUG_KMS("connector %d enabled? %s\n", connector->base.id,
     enabled[i] ? "yes" : "no");
  any_enabled |= enabled[i];
 }

 if (any_enabled)
  return;

 for (i = 0; i < fb_helper->connector_count; i++) {
  connector = fb_helper->connector_info[i]->connector;
  enabled[i] = drm_connector_enabled(connector, 0);
 }
}
