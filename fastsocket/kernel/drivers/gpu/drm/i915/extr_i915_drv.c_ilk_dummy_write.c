
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_WRITE_NOTRACE (int ,int ) ;
 int MI_MODE ;

__attribute__((used)) static void
ilk_dummy_write(struct drm_i915_private *dev_priv)
{



 I915_WRITE_NOTRACE(MI_MODE, 0);
}
