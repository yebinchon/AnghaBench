
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {scalar_t__ last_seqno; scalar_t__ next_seqno; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int EINVAL ;
 int i915_gem_init_seqno (struct drm_device*,scalar_t__) ;

int i915_gem_set_seqno(struct drm_device *dev, u32 seqno)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 if (seqno == 0)
  return -EINVAL;




 ret = i915_gem_init_seqno(dev, seqno - 1);
 if (ret)
  return ret;




 dev_priv->next_seqno = seqno;
 dev_priv->last_seqno = seqno - 1;
 if (dev_priv->last_seqno == 0)
  dev_priv->last_seqno--;

 return 0;
}
