
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int id; } ;
struct TYPE_12__ {scalar_t__ pixclock; } ;
struct fb_info {TYPE_6__ fix; int node; TYPE_5__ var; } ;
struct drm_fb_helper_surface_size {int surface_depth; int surface_bpp; unsigned int fb_width; unsigned int fb_height; scalar_t__ surface_width; scalar_t__ surface_height; } ;
struct drm_cmdline_mode {int bpp; scalar_t__ bpp_specified; } ;
struct drm_fb_helper_connector {struct drm_cmdline_mode cmdline_mode; } ;
struct drm_fb_helper {int connector_count; int crtc_count; int kernel_fb_list; TYPE_7__* dev; int fb; TYPE_4__* crtc_info; struct fb_info* fbdev; TYPE_2__* funcs; struct drm_fb_helper_connector** connector_info; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_10__ {int fb; scalar_t__ num_connectors; TYPE_1__* crtc; } ;
struct TYPE_11__ {TYPE_3__ mode_set; struct drm_display_mode* desired_mode; } ;
struct TYPE_9__ {int (* fb_probe ) (struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ;} ;
struct TYPE_8__ {int gamma_size; } ;


 int DRM_INFO (char*) ;
 int EINVAL ;
 int atomic_notifier_chain_register (int *,int *) ;
 int dev_info (int ,char*,...) ;
 int kernel_fb_helper_list ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int memset (struct drm_fb_helper_surface_size*,int ,int) ;
 int panic_notifier_list ;
 int paniced ;
 scalar_t__ register_framebuffer (struct fb_info*) ;
 int register_sysrq_key (char,int *) ;
 int stub1 (struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ;
 int sysrq_drm_fb_helper_restore_op ;

__attribute__((used)) static int drm_fb_helper_single_fb_probe(struct drm_fb_helper *fb_helper,
      int preferred_bpp)
{
 int ret = 0;
 int crtc_count = 0;
 int i;
 struct fb_info *info;
 struct drm_fb_helper_surface_size sizes;
 int gamma_size = 0;

 memset(&sizes, 0, sizeof(struct drm_fb_helper_surface_size));
 sizes.surface_depth = 24;
 sizes.surface_bpp = 32;
 sizes.fb_width = (unsigned)-1;
 sizes.fb_height = (unsigned)-1;



 if (preferred_bpp != sizes.surface_bpp)
  sizes.surface_depth = sizes.surface_bpp = preferred_bpp;


 for (i = 0; i < fb_helper->connector_count; i++) {
  struct drm_fb_helper_connector *fb_helper_conn = fb_helper->connector_info[i];
  struct drm_cmdline_mode *cmdline_mode;

  cmdline_mode = &fb_helper_conn->cmdline_mode;

  if (cmdline_mode->bpp_specified) {
   switch (cmdline_mode->bpp) {
   case 8:
    sizes.surface_depth = sizes.surface_bpp = 8;
    break;
   case 15:
    sizes.surface_depth = 15;
    sizes.surface_bpp = 16;
    break;
   case 16:
    sizes.surface_depth = sizes.surface_bpp = 16;
    break;
   case 24:
    sizes.surface_depth = sizes.surface_bpp = 24;
    break;
   case 32:
    sizes.surface_depth = 24;
    sizes.surface_bpp = 32;
    break;
   }
   break;
  }
 }

 crtc_count = 0;
 for (i = 0; i < fb_helper->crtc_count; i++) {
  struct drm_display_mode *desired_mode;
  desired_mode = fb_helper->crtc_info[i].desired_mode;

  if (desired_mode) {
   if (gamma_size == 0)
    gamma_size = fb_helper->crtc_info[i].mode_set.crtc->gamma_size;
   if (desired_mode->hdisplay < sizes.fb_width)
    sizes.fb_width = desired_mode->hdisplay;
   if (desired_mode->vdisplay < sizes.fb_height)
    sizes.fb_height = desired_mode->vdisplay;
   if (desired_mode->hdisplay > sizes.surface_width)
    sizes.surface_width = desired_mode->hdisplay;
   if (desired_mode->vdisplay > sizes.surface_height)
    sizes.surface_height = desired_mode->vdisplay;
   crtc_count++;
  }
 }

 if (crtc_count == 0 || sizes.fb_width == -1 || sizes.fb_height == -1) {


  DRM_INFO("Cannot find any crtc or sizes - going 1024x768\n");
  sizes.fb_width = sizes.surface_width = 1024;
  sizes.fb_height = sizes.surface_height = 768;
 }


 ret = (*fb_helper->funcs->fb_probe)(fb_helper, &sizes);
 if (ret < 0)
  return ret;

 info = fb_helper->fbdev;
 for (i = 0; i < fb_helper->crtc_count; i++)
  if (fb_helper->crtc_info[i].mode_set.num_connectors)
   fb_helper->crtc_info[i].mode_set.fb = fb_helper->fb;


 info->var.pixclock = 0;
 if (register_framebuffer(info) < 0)
  return -EINVAL;

 dev_info(fb_helper->dev->dev, "fb%d: %s frame buffer device\n",
   info->node, info->fix.id);



 if (list_empty(&kernel_fb_helper_list)) {
  dev_info(fb_helper->dev->dev, "registered panic notifier\n");
  atomic_notifier_chain_register(&panic_notifier_list,
            &paniced);
  register_sysrq_key('v', &sysrq_drm_fb_helper_restore_op);
 }

 list_add(&fb_helper->kernel_fb_list, &kernel_fb_helper_list);

 return 0;
}
