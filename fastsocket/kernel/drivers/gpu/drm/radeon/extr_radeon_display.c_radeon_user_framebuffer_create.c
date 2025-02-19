
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {int dummy; } ;
struct radeon_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOENT ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int ) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 int kfree (struct radeon_framebuffer*) ;
 struct radeon_framebuffer* kzalloc (int,int ) ;
 int radeon_framebuffer_init (struct drm_device*,struct radeon_framebuffer*,struct drm_mode_fb_cmd2*,struct drm_gem_object*) ;

__attribute__((used)) static struct drm_framebuffer *
radeon_user_framebuffer_create(struct drm_device *dev,
          struct drm_file *file_priv,
          struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct drm_gem_object *obj;
 struct radeon_framebuffer *radeon_fb;
 int ret;

 obj = drm_gem_object_lookup(dev, file_priv, mode_cmd->handles[0]);
 if (obj == ((void*)0)) {
  dev_err(&dev->pdev->dev, "No GEM object associated to handle 0x%08X, "
   "can't create framebuffer\n", mode_cmd->handles[0]);
  return ERR_PTR(-ENOENT);
 }

 radeon_fb = kzalloc(sizeof(*radeon_fb), GFP_KERNEL);
 if (radeon_fb == ((void*)0)) {
  drm_gem_object_unreference_unlocked(obj);
  return ERR_PTR(-ENOMEM);
 }

 ret = radeon_framebuffer_init(dev, radeon_fb, mode_cmd, obj);
 if (ret) {
  kfree(radeon_fb);
  drm_gem_object_unreference_unlocked(obj);
  return ERR_PTR(ret);
 }

 return &radeon_fb->base;
}
