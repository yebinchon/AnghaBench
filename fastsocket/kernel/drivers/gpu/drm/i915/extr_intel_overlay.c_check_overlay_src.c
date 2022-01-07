
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_intel_overlay_put_image {int flags; int src_height; int src_width; int stride_UV; int offset_Y; int stride_Y; int offset_V; int offset_U; } ;
struct TYPE_2__ {int size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;

 int I915_OVERLAY_TYPE_MASK ;


 int IMAGE_MAX_HEIGHT ;
 int IMAGE_MAX_HEIGHT_LEGACY ;
 int IMAGE_MAX_WIDTH ;
 int IMAGE_MAX_WIDTH_LEGACY ;
 scalar_t__ IS_845G (struct drm_device*) ;
 scalar_t__ IS_GEN4 (struct drm_device*) ;
 scalar_t__ IS_I830 (struct drm_device*) ;
 int N_HORIZ_Y_TAPS ;
 int N_VERT_Y_TAPS ;
 int packed_depth_bytes (int) ;
 int packed_width_bytes (int,int) ;
 int uv_hsubsampling (int) ;
 int uv_vsubsampling (int) ;

__attribute__((used)) static int check_overlay_src(struct drm_device *dev,
        struct drm_intel_overlay_put_image *rec,
        struct drm_i915_gem_object *new_bo)
{
 int uv_hscale = uv_hsubsampling(rec->flags);
 int uv_vscale = uv_vsubsampling(rec->flags);
 u32 stride_mask;
 int depth;
 u32 tmp;


 if (IS_845G(dev) || IS_I830(dev)) {
  if (rec->src_height > IMAGE_MAX_HEIGHT_LEGACY ||
      rec->src_width > IMAGE_MAX_WIDTH_LEGACY)
   return -EINVAL;
 } else {
  if (rec->src_height > IMAGE_MAX_HEIGHT ||
      rec->src_width > IMAGE_MAX_WIDTH)
   return -EINVAL;
 }


 if (rec->src_height < N_VERT_Y_TAPS*4 ||
     rec->src_width < N_HORIZ_Y_TAPS*4)
  return -EINVAL;


 switch (rec->flags & I915_OVERLAY_TYPE_MASK) {
 case 130:

  return -EINVAL;

 case 129:
  if (uv_vscale != 1)
   return -EINVAL;

  depth = packed_depth_bytes(rec->flags);
  if (depth < 0)
   return depth;


  rec->stride_UV = 0;
  rec->offset_U = 0;
  rec->offset_V = 0;

  if (rec->offset_Y % depth)
   return -EINVAL;
  break;

 case 128:
  if (uv_vscale < 0 || uv_hscale < 0)
   return -EINVAL;

  break;

 default:
  return -EINVAL;
 }

 if (rec->src_width % uv_hscale)
  return -EINVAL;


 if (IS_I830(dev) || IS_845G(dev))
  stride_mask = 255;
 else
  stride_mask = 63;

 if (rec->stride_Y & stride_mask || rec->stride_UV & stride_mask)
  return -EINVAL;
 if (IS_GEN4(dev) && rec->stride_Y < 512)
  return -EINVAL;

 tmp = (rec->flags & I915_OVERLAY_TYPE_MASK) == 128 ?
  4096 : 8192;
 if (rec->stride_Y > tmp || rec->stride_UV > 2*1024)
  return -EINVAL;


 switch (rec->flags & I915_OVERLAY_TYPE_MASK) {
 case 130:
 case 129:

  if (packed_width_bytes(rec->flags, rec->src_width) > rec->stride_Y)
   return -EINVAL;

  tmp = rec->stride_Y*rec->src_height;
  if (rec->offset_Y + tmp > new_bo->base.size)
   return -EINVAL;
  break;

 case 128:
  if (rec->src_width > rec->stride_Y)
   return -EINVAL;
  if (rec->src_width/uv_hscale > rec->stride_UV)
   return -EINVAL;

  tmp = rec->stride_Y * rec->src_height;
  if (rec->offset_Y + tmp > new_bo->base.size)
   return -EINVAL;

  tmp = rec->stride_UV * (rec->src_height / uv_vscale);
  if (rec->offset_U + tmp > new_bo->base.size ||
      rec->offset_V + tmp > new_bo->base.size)
   return -EINVAL;
  break;
 }

 return 0;
}
