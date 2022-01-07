
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {int force; int refresh; scalar_t__ interlace; scalar_t__ margins; scalar_t__ rb; scalar_t__ refresh_specified; int yres; int xres; } ;
struct drm_fb_helper_connector {struct drm_cmdline_mode cmdline_mode; struct drm_connector* connector; } ;
struct drm_fb_helper {int connector_count; struct drm_fb_helper_connector** connector_info; } ;
struct drm_connector {int force; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int,char*,char*,char*) ;



 int DRM_INFO (char*,int ,char const*) ;
 int drm_get_connector_name (struct drm_connector*) ;
 scalar_t__ drm_mode_parse_command_line_for_connector (char*,struct drm_connector*,struct drm_cmdline_mode*) ;
 scalar_t__ fb_get_options (int ,char**) ;

__attribute__((used)) static int drm_fb_helper_parse_command_line(struct drm_fb_helper *fb_helper)
{
 struct drm_fb_helper_connector *fb_helper_conn;
 int i;

 for (i = 0; i < fb_helper->connector_count; i++) {
  struct drm_cmdline_mode *mode;
  struct drm_connector *connector;
  char *option = ((void*)0);

  fb_helper_conn = fb_helper->connector_info[i];
  connector = fb_helper_conn->connector;
  mode = &fb_helper_conn->cmdline_mode;


  if (fb_get_options(drm_get_connector_name(connector), &option))
   continue;

  if (drm_mode_parse_command_line_for_connector(option,
             connector,
             mode)) {
   if (mode->force) {
    const char *s;
    switch (mode->force) {
    case 130:
     s = "OFF";
     break;
    case 128:
     s = "ON - dig";
     break;
    default:
    case 129:
     s = "ON";
     break;
    }

    DRM_INFO("forcing %s connector %s\n",
      drm_get_connector_name(connector), s);
    connector->force = mode->force;
   }

   DRM_DEBUG_KMS("cmdline mode for connector %s %dx%d@%dHz%s%s%s\n",
          drm_get_connector_name(connector),
          mode->xres, mode->yres,
          mode->refresh_specified ? mode->refresh : 60,
          mode->rb ? " reduced blanking" : "",
          mode->margins ? " with margins" : "",
          mode->interlace ? " interlaced" : "");
  }

 }
 return 0;
}
