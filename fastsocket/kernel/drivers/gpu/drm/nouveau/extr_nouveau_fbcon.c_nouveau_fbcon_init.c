
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * funcs; } ;
struct nouveau_fbdev {TYPE_3__ helper; struct drm_device* dev; } ;
struct TYPE_7__ {int size; } ;
struct nouveau_fb {TYPE_2__ ram; } ;
struct nouveau_drm {struct nouveau_fbdev* fbcon; int device; } ;
struct TYPE_6__ {int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_fb_helper_init (struct drm_device*,TYPE_3__*,int ,int) ;
 int drm_fb_helper_initial_config (TYPE_3__*,int) ;
 int drm_fb_helper_single_add_all_connectors (TYPE_3__*) ;
 int drm_helper_disable_unused_functions (struct drm_device*) ;
 int kfree (struct nouveau_fbdev*) ;
 struct nouveau_fbdev* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_fb* nouveau_fb (int ) ;
 int nouveau_fbcon_helper_funcs ;

int
nouveau_fbcon_init(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_fb *pfb = nouveau_fb(drm->device);
 struct nouveau_fbdev *fbcon;
 int preferred_bpp;
 int ret;

 if (!dev->mode_config.num_crtc)
  return 0;

 fbcon = kzalloc(sizeof(struct nouveau_fbdev), GFP_KERNEL);
 if (!fbcon)
  return -ENOMEM;

 fbcon->dev = dev;
 drm->fbcon = fbcon;
 fbcon->helper.funcs = &nouveau_fbcon_helper_funcs;

 ret = drm_fb_helper_init(dev, &fbcon->helper,
     dev->mode_config.num_crtc, 4);
 if (ret) {
  kfree(fbcon);
  return ret;
 }

 drm_fb_helper_single_add_all_connectors(&fbcon->helper);

 if (pfb->ram.size <= 32 * 1024 * 1024)
  preferred_bpp = 8;
 else
 if (pfb->ram.size <= 64 * 1024 * 1024)
  preferred_bpp = 16;
 else
  preferred_bpp = 32;


 drm_helper_disable_unused_functions(dev);

 drm_fb_helper_initial_config(&fbcon->helper, preferred_bpp);
 return 0;
}
