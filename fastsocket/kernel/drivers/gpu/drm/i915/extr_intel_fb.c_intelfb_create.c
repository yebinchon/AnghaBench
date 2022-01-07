
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


struct drm_framebuffer {int height; int width; int depth; int * pitches; } ;
struct TYPE_13__ {TYPE_4__* obj; struct drm_framebuffer base; } ;
struct TYPE_14__ {struct fb_info* fbdev; struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct intel_fbdev {TYPE_6__ ifb; TYPE_7__ helper; } ;
struct TYPE_9__ {int smem_len; scalar_t__ smem_start; int id; } ;
struct fb_info {int flags; int screen_size; int screen_base; TYPE_2__ fix; int cmap; int * fbops; struct intel_fbdev* par; } ;
struct drm_mode_fb_cmd2 {int width; int height; int* pitches; int pixel_format; } ;
struct TYPE_10__ {scalar_t__ mappable_base; } ;
struct drm_i915_private {TYPE_3__ gtt; } ;
struct drm_i915_gem_object {int base; scalar_t__ gtt_offset; } ;
struct drm_fb_helper_surface_size {int surface_bpp; int surface_width; int surface_height; int fb_height; int fb_width; int surface_depth; } ;
struct drm_fb_helper {int dummy; } ;
struct TYPE_8__ {scalar_t__ fb_base; } ;
struct drm_device {int struct_mutex; TYPE_5__* pdev; TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_12__ {struct device dev; } ;
struct TYPE_11__ {scalar_t__ stolen; } ;


 void* ALIGN (int,int) ;
 int DRM_DEBUG_KMS (char*,int ,int ,scalar_t__,struct drm_i915_gem_object*) ;
 int DRM_ERROR (char*,...) ;
 int ENOMEM ;
 int ENOSPC ;
 int FBINFO_CAN_FORCE_OUTPUT ;
 int FBINFO_DEFAULT ;
 int PAGE_SIZE ;
 int drm_fb_helper_fill_fix (struct fb_info*,int ,int ) ;
 int drm_fb_helper_fill_var (struct fb_info*,TYPE_7__*,int ,int ) ;
 int drm_gem_object_unreference (int *) ;
 int drm_mode_legacy_fb_format (int,int ) ;
 int fb_alloc_cmap (int *,int,int ) ;
 struct fb_info* framebuffer_alloc (int ,struct device*) ;
 struct drm_i915_gem_object* i915_gem_alloc_object (struct drm_device*,int) ;
 struct drm_i915_gem_object* i915_gem_object_create_stolen (struct drm_device*,int) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 int intel_framebuffer_init (struct drm_device*,TYPE_6__*,struct drm_mode_fb_cmd2*,struct drm_i915_gem_object*) ;
 int intel_pin_and_fence_fb_obj (struct drm_device*,struct drm_i915_gem_object*,int *) ;
 int intelfb_ops ;
 int ioremap_wc (scalar_t__,int) ;
 int memset_io (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (int ,char*) ;
 int vga_switcheroo_client_fb_set (TYPE_5__*,struct fb_info*) ;

__attribute__((used)) static int intelfb_create(struct drm_fb_helper *helper,
     struct drm_fb_helper_surface_size *sizes)
{
 struct intel_fbdev *ifbdev = (struct intel_fbdev *)helper;
 struct drm_device *dev = ifbdev->helper.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct fb_info *info;
 struct drm_framebuffer *fb;
 struct drm_mode_fb_cmd2 mode_cmd = {};
 struct drm_i915_gem_object *obj;
 struct device *device = &dev->pdev->dev;
 int size, ret;


 if (sizes->surface_bpp == 24)
  sizes->surface_bpp = 32;

 mode_cmd.width = sizes->surface_width;
 mode_cmd.height = sizes->surface_height;

 mode_cmd.pitches[0] = ALIGN(mode_cmd.width * ((sizes->surface_bpp + 7) /
            8), 64);
 mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
         sizes->surface_depth);

 size = mode_cmd.pitches[0] * mode_cmd.height;
 size = ALIGN(size, PAGE_SIZE);
 obj = i915_gem_object_create_stolen(dev, size);
 if (obj == ((void*)0))
  obj = i915_gem_alloc_object(dev, size);
 if (!obj) {
  DRM_ERROR("failed to allocate framebuffer\n");
  ret = -ENOMEM;
  goto out;
 }

 mutex_lock(&dev->struct_mutex);


 ret = intel_pin_and_fence_fb_obj(dev, obj, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to pin fb: %d\n", ret);
  goto out_unref;
 }

 info = framebuffer_alloc(0, device);
 if (!info) {
  ret = -ENOMEM;
  goto out_unpin;
 }

 info->par = ifbdev;

 ret = intel_framebuffer_init(dev, &ifbdev->ifb, &mode_cmd, obj);
 if (ret)
  goto out_unpin;

 fb = &ifbdev->ifb.base;

 ifbdev->helper.fb = fb;
 ifbdev->helper.fbdev = info;

 strcpy(info->fix.id, "inteldrmfb");

 info->flags = FBINFO_DEFAULT | FBINFO_CAN_FORCE_OUTPUT;
 info->fbops = &intelfb_ops;

 ret = fb_alloc_cmap(&info->cmap, 256, 0);
 if (ret) {
  ret = -ENOMEM;
  goto out_unpin;
 }

 info->fix.smem_start = dev->mode_config.fb_base + obj->gtt_offset;
 info->fix.smem_len = size;

 info->screen_base =
  ioremap_wc(dev_priv->gtt.mappable_base + obj->gtt_offset,
      size);
 if (!info->screen_base) {
  ret = -ENOSPC;
  goto out_unpin;
 }
 info->screen_size = size;



 drm_fb_helper_fill_fix(info, fb->pitches[0], fb->depth);
 drm_fb_helper_fill_var(info, &ifbdev->helper, sizes->fb_width, sizes->fb_height);





 if (ifbdev->ifb.obj->stolen)
  memset_io(info->screen_base, 0, info->screen_size);



 DRM_DEBUG_KMS("allocated %dx%d fb: 0x%08x, bo %p\n",
        fb->width, fb->height,
        obj->gtt_offset, obj);


 mutex_unlock(&dev->struct_mutex);
 vga_switcheroo_client_fb_set(dev->pdev, info);
 return 0;

out_unpin:
 i915_gem_object_unpin(obj);
out_unref:
 drm_gem_object_unreference(&obj->base);
 mutex_unlock(&dev->struct_mutex);
out:
 return ret;
}
