
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct nouveau_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (struct drm_gem_object*) ;
 struct nouveau_framebuffer* kzalloc (int,int ) ;
 int nouveau_framebuffer_init (struct drm_device*,struct nouveau_framebuffer*,struct drm_mode_fb_cmd2*,int ) ;
 int nouveau_gem_object (struct drm_gem_object*) ;

__attribute__((used)) static struct drm_framebuffer *
nouveau_user_framebuffer_create(struct drm_device *dev,
    struct drm_file *file_priv,
    struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct nouveau_framebuffer *nouveau_fb;
 struct drm_gem_object *gem;
 int ret;

 gem = drm_gem_object_lookup(dev, file_priv, mode_cmd->handles[0]);
 if (!gem)
  return ERR_PTR(-ENOENT);

 nouveau_fb = kzalloc(sizeof(struct nouveau_framebuffer), GFP_KERNEL);
 if (!nouveau_fb)
  return ERR_PTR(-ENOMEM);

 ret = nouveau_framebuffer_init(dev, nouveau_fb, mode_cmd, nouveau_gem_object(gem));
 if (ret) {
  drm_gem_object_unreference(gem);
  return ERR_PTR(ret);
 }

 return &nouveau_fb->base;
}
