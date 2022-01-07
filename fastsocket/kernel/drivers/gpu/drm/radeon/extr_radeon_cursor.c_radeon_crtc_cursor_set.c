
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_id; struct drm_gem_object* cursor_bo; scalar_t__ cursor_height; scalar_t__ cursor_width; } ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ CURSOR_HEIGHT ;
 scalar_t__ CURSOR_WIDTH ;
 int DRM_ERROR (char*,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int ENOENT ;
 int RADEON_GEM_DOMAIN_VRAM ;
 struct drm_gem_object* drm_gem_object_lookup (TYPE_1__*,struct drm_file*,scalar_t__) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 scalar_t__ likely (int) ;
 int radeon_bo_pin_restricted (struct radeon_bo*,int ,int,int *) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 int radeon_hide_cursor (struct drm_crtc*) ;
 int radeon_lock_cursor (struct drm_crtc*,int) ;
 int radeon_set_cursor (struct drm_crtc*,struct drm_gem_object*,int ) ;
 int radeon_show_cursor (struct drm_crtc*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;
 scalar_t__ unlikely (int) ;

int radeon_crtc_cursor_set(struct drm_crtc *crtc,
      struct drm_file *file_priv,
      uint32_t handle,
      uint32_t width,
      uint32_t height)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct radeon_device *rdev = crtc->dev->dev_private;
 struct drm_gem_object *obj;
 struct radeon_bo *robj;
 uint64_t gpu_addr;
 int ret;

 if (!handle) {

  radeon_hide_cursor(crtc);
  obj = ((void*)0);
  goto unpin;
 }

 if ((width > CURSOR_WIDTH) || (height > CURSOR_HEIGHT)) {
  DRM_ERROR("bad cursor width or height %d x %d\n", width, height);
  return -EINVAL;
 }

 obj = drm_gem_object_lookup(crtc->dev, file_priv, handle);
 if (!obj) {
  DRM_ERROR("Cannot find cursor object %x for crtc %d\n", handle, radeon_crtc->crtc_id);
  return -ENOENT;
 }

 robj = gem_to_radeon_bo(obj);
 ret = radeon_bo_reserve(robj, 0);
 if (unlikely(ret != 0))
  goto fail;

 ret = radeon_bo_pin_restricted(robj, RADEON_GEM_DOMAIN_VRAM,
           ASIC_IS_AVIVO(rdev) ? 0 : 1 << 27,
           &gpu_addr);
 radeon_bo_unreserve(robj);
 if (ret)
  goto fail;

 radeon_crtc->cursor_width = width;
 radeon_crtc->cursor_height = height;

 radeon_lock_cursor(crtc, 1);
 radeon_set_cursor(crtc, obj, gpu_addr);
 radeon_show_cursor(crtc);
 radeon_lock_cursor(crtc, 0);

unpin:
 if (radeon_crtc->cursor_bo) {
  robj = gem_to_radeon_bo(radeon_crtc->cursor_bo);
  ret = radeon_bo_reserve(robj, 0);
  if (likely(ret == 0)) {
   radeon_bo_unpin(robj);
   radeon_bo_unreserve(robj);
  }
  drm_gem_object_unreference_unlocked(radeon_crtc->cursor_bo);
 }

 radeon_crtc->cursor_bo = obj;
 return 0;
fail:
 drm_gem_object_unreference_unlocked(obj);

 return ret;
}
