
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int child_dev_num; struct child_device_config* child_dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct child_device_config {scalar_t__ device_type; scalar_t__ addin_offset; } ;


 scalar_t__ DEVICE_TYPE_INT_TV ;
 scalar_t__ DEVICE_TYPE_TV ;

__attribute__((used)) static int tv_is_present_in_vbt(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct child_device_config *p_child;
 int i, ret;

 if (!dev_priv->child_dev_num)
  return 1;

 ret = 0;
 for (i = 0; i < dev_priv->child_dev_num; i++) {
  p_child = dev_priv->child_dev + i;



  if (p_child->device_type != DEVICE_TYPE_INT_TV &&
   p_child->device_type != DEVICE_TYPE_TV)
   continue;



  if (p_child->addin_offset) {
   ret = 1;
   break;
  }
 }
 return ret;
}
