
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int next_seqno; int last_seqno; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int i915_gem_init_seqno (struct drm_device*,int ) ;

int
i915_gem_get_seqno(struct drm_device *dev, u32 *seqno)
{
 struct drm_i915_private *dev_priv = dev->dev_private;


 if (dev_priv->next_seqno == 0) {
  int ret = i915_gem_init_seqno(dev, 0);
  if (ret)
   return ret;

  dev_priv->next_seqno = 1;
 }

 *seqno = dev_priv->last_seqno = dev_priv->next_seqno++;
 return 0;
}
