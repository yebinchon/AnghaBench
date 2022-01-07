
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_i915_master_private {TYPE_1__* sarea_priv; } ;
struct drm_device {TYPE_4__* primary; TYPE_5__* dev_private; } ;
struct TYPE_7__ {int counter; } ;
struct TYPE_10__ {TYPE_2__ dri1; } ;
typedef TYPE_5__ drm_i915_private_t ;
struct TYPE_9__ {TYPE_3__* master; } ;
struct TYPE_8__ {struct drm_i915_master_private* driver_priv; } ;
struct TYPE_6__ {int last_enqueue; } ;


 int ADVANCE_LP_RING () ;
 scalar_t__ BEGIN_LP_RING (int) ;
 int I915_BREADCRUMB_INDEX ;
 int MI_STORE_DWORD_INDEX ;
 int MI_STORE_DWORD_INDEX_SHIFT ;
 int OUT_RING (int) ;

__attribute__((used)) static void i915_emit_breadcrumb(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_i915_master_private *master_priv = dev->primary->master->driver_priv;

 dev_priv->dri1.counter++;
 if (dev_priv->dri1.counter > 0x7FFFFFFFUL)
  dev_priv->dri1.counter = 0;
 if (master_priv->sarea_priv)
  master_priv->sarea_priv->last_enqueue = dev_priv->dri1.counter;

 if (BEGIN_LP_RING(4) == 0) {
  OUT_RING(MI_STORE_DWORD_INDEX);
  OUT_RING(I915_BREADCRUMB_INDEX << MI_STORE_DWORD_INDEX_SHIFT);
  OUT_RING(dev_priv->dri1.counter);
  OUT_RING(0);
  ADVANCE_LP_RING();
 }
}
