
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_hw_ppgtt {struct drm_device* dev; } ;
struct TYPE_2__ {struct i915_hw_ppgtt* aliasing_ppgtt; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gen6_ppgtt_init (struct i915_hw_ppgtt*) ;
 int kfree (struct i915_hw_ppgtt*) ;
 struct i915_hw_ppgtt* kzalloc (int,int ) ;

__attribute__((used)) static int i915_gem_init_aliasing_ppgtt(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct i915_hw_ppgtt *ppgtt;
 int ret;

 ppgtt = kzalloc(sizeof(*ppgtt), GFP_KERNEL);
 if (!ppgtt)
  return -ENOMEM;

 ppgtt->dev = dev;

 ret = gen6_ppgtt_init(ppgtt);
 if (ret)
  kfree(ppgtt);
 else
  dev_priv->mm.aliasing_ppgtt = ppgtt;

 return ret;
}
