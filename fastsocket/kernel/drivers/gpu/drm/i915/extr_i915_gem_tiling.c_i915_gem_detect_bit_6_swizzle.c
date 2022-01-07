
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {int bit_6_swizzle_x; int bit_6_swizzle_y; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;


 int C0DRB3 ;
 int C1DRB3 ;
 int DCC ;


 int DCC_ADDRESSING_MODE_MASK ;

 int DCC_CHANNEL_XOR_BIT_17 ;
 int DCC_CHANNEL_XOR_DISABLE ;
 int DRM_ERROR (char*) ;
 int I915_BIT_6_SWIZZLE_9 ;
 int I915_BIT_6_SWIZZLE_9_10 ;
 int I915_BIT_6_SWIZZLE_9_10_11 ;
 int I915_BIT_6_SWIZZLE_9_10_17 ;
 int I915_BIT_6_SWIZZLE_9_11 ;
 int I915_BIT_6_SWIZZLE_9_17 ;
 int I915_BIT_6_SWIZZLE_NONE ;
 int I915_BIT_6_SWIZZLE_UNKNOWN ;
 int I915_READ (int ) ;
 scalar_t__ I915_READ16 (int ) ;
 TYPE_3__* INTEL_INFO (struct drm_device*) ;
 int IS_G33 (struct drm_device*) ;
 scalar_t__ IS_GEN2 (struct drm_device*) ;
 scalar_t__ IS_GEN3 (struct drm_device*) ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 scalar_t__ IS_MOBILE (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int MAD_DIMM_A_SIZE_MASK ;
 int MAD_DIMM_B_SIZE_MASK ;
 int MAD_DIMM_C0 ;
 int MAD_DIMM_C1 ;

void
i915_gem_detect_bit_6_swizzle(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 uint32_t swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
 uint32_t swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;

 if (IS_VALLEYVIEW(dev)) {
  swizzle_x = I915_BIT_6_SWIZZLE_NONE;
  swizzle_y = I915_BIT_6_SWIZZLE_NONE;
 } else if (INTEL_INFO(dev)->gen >= 6) {
  uint32_t dimm_c0, dimm_c1;
  dimm_c0 = I915_READ(MAD_DIMM_C0);
  dimm_c1 = I915_READ(MAD_DIMM_C1);
  dimm_c0 &= MAD_DIMM_A_SIZE_MASK | MAD_DIMM_B_SIZE_MASK;
  dimm_c1 &= MAD_DIMM_A_SIZE_MASK | MAD_DIMM_B_SIZE_MASK;





  if (dimm_c0 == dimm_c1) {
   swizzle_x = I915_BIT_6_SWIZZLE_9_10;
   swizzle_y = I915_BIT_6_SWIZZLE_9;
  } else {
   swizzle_x = I915_BIT_6_SWIZZLE_NONE;
   swizzle_y = I915_BIT_6_SWIZZLE_NONE;
  }
 } else if (IS_GEN5(dev)) {



  swizzle_x = I915_BIT_6_SWIZZLE_9_10;
  swizzle_y = I915_BIT_6_SWIZZLE_9;
 } else if (IS_GEN2(dev)) {



  swizzle_x = I915_BIT_6_SWIZZLE_NONE;
  swizzle_y = I915_BIT_6_SWIZZLE_NONE;
 } else if (IS_MOBILE(dev) || (IS_GEN3(dev) && !IS_G33(dev))) {
  uint32_t dcc;
  dcc = I915_READ(DCC);
  switch (dcc & DCC_ADDRESSING_MODE_MASK) {
  case 128:
  case 130:
   swizzle_x = I915_BIT_6_SWIZZLE_NONE;
   swizzle_y = I915_BIT_6_SWIZZLE_NONE;
   break;
  case 129:
   if (dcc & DCC_CHANNEL_XOR_DISABLE) {



    swizzle_x = I915_BIT_6_SWIZZLE_9_10;
    swizzle_y = I915_BIT_6_SWIZZLE_9;
   } else if ((dcc & DCC_CHANNEL_XOR_BIT_17) == 0) {

    swizzle_x = I915_BIT_6_SWIZZLE_9_10_11;
    swizzle_y = I915_BIT_6_SWIZZLE_9_11;
   } else {

    swizzle_x = I915_BIT_6_SWIZZLE_9_10_17;
    swizzle_y = I915_BIT_6_SWIZZLE_9_17;
   }
   break;
  }
  if (dcc == 0xffffffff) {
   DRM_ERROR("Couldn't read from MCHBAR.  "
      "Disabling tiling.\n");
   swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
   swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;
  }
 } else {
  if (I915_READ16(C0DRB3) != I915_READ16(C1DRB3)) {
   swizzle_x = I915_BIT_6_SWIZZLE_NONE;
   swizzle_y = I915_BIT_6_SWIZZLE_NONE;
  } else {
   swizzle_x = I915_BIT_6_SWIZZLE_9_10;
   swizzle_y = I915_BIT_6_SWIZZLE_9;
  }
 }

 dev_priv->mm.bit_6_swizzle_x = swizzle_x;
 dev_priv->mm.bit_6_swizzle_y = swizzle_y;
}
