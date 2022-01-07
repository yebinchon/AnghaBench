
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper {struct drm_device* dev; } ;
struct TYPE_2__ {int max_height; int max_width; } ;
struct drm_device {int dev; TYPE_1__ mode_config; } ;


 int dev_info (int ,char*) ;
 int drm_fb_helper_parse_command_line (struct drm_fb_helper*) ;
 int drm_fb_helper_probe_connector_modes (struct drm_fb_helper*,int ,int ) ;
 int drm_fb_helper_single_fb_probe (struct drm_fb_helper*,int) ;
 int drm_setup_crtcs (struct drm_fb_helper*) ;

bool drm_fb_helper_initial_config(struct drm_fb_helper *fb_helper, int bpp_sel)
{
 struct drm_device *dev = fb_helper->dev;
 int count = 0;

 drm_fb_helper_parse_command_line(fb_helper);

 count = drm_fb_helper_probe_connector_modes(fb_helper,
          dev->mode_config.max_width,
          dev->mode_config.max_height);



 if (count == 0)
  dev_info(fb_helper->dev->dev, "No connectors reported connected with modes\n");

 drm_setup_crtcs(fb_helper);

 return drm_fb_helper_single_fb_probe(fb_helper, bpp_sel);
}
