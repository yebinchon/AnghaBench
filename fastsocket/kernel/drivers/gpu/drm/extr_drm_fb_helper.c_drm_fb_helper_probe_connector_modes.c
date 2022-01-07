
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_fb_helper {int connector_count; TYPE_1__** connector_info; } ;
struct drm_connector {TYPE_2__* funcs; } ;
struct TYPE_4__ {scalar_t__ (* fill_modes ) (struct drm_connector*,int ,int ) ;} ;
struct TYPE_3__ {struct drm_connector* connector; } ;


 scalar_t__ stub1 (struct drm_connector*,int ,int ) ;

__attribute__((used)) static int drm_fb_helper_probe_connector_modes(struct drm_fb_helper *fb_helper,
            uint32_t maxX,
            uint32_t maxY)
{
 struct drm_connector *connector;
 int count = 0;
 int i;

 for (i = 0; i < fb_helper->connector_count; i++) {
  connector = fb_helper->connector_info[i]->connector;
  count += connector->funcs->fill_modes(connector, maxX, maxY);
 }

 return count;
}
