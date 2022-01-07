
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {TYPE_1__* fbc_work; } ;
struct TYPE_2__ {int work; } ;


 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ cancel_delayed_work (int *) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void intel_cancel_fbc_work(struct drm_i915_private *dev_priv)
{
 if (dev_priv->fbc_work == ((void*)0))
  return;

 DRM_DEBUG_KMS("cancelling pending FBC enable\n");





 if (cancel_delayed_work(&dev_priv->fbc_work->work))

  kfree(dev_priv->fbc_work);






 dev_priv->fbc_work = ((void*)0);
}
