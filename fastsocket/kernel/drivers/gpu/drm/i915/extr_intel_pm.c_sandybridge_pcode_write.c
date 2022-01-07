
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int hw_lock; } ;
struct drm_i915_private {TYPE_1__ rps; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,int) ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int GEN6_PCODE_DATA ;
 int GEN6_PCODE_MAILBOX ;
 int GEN6_PCODE_READY ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 scalar_t__ wait_for (int,int) ;

int sandybridge_pcode_write(struct drm_i915_private *dev_priv, u8 mbox, u32 val)
{
 WARN_ON(!mutex_is_locked(&dev_priv->rps.hw_lock));

 if (I915_READ(GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY) {
  DRM_DEBUG_DRIVER("warning: pcode (write) mailbox access failed\n");
  return -EAGAIN;
 }

 I915_WRITE(GEN6_PCODE_DATA, val);
 I915_WRITE(GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);

 if (wait_for((I915_READ(GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY) == 0,
       500)) {
  DRM_ERROR("timeout waiting for pcode write (%d) to finish\n", mbox);
  return -ETIMEDOUT;
 }

 I915_WRITE(GEN6_PCODE_DATA, 0);

 return 0;
}
