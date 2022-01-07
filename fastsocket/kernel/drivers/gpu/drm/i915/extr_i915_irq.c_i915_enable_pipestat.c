
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* pipestat; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int I915_WRITE (int,int) ;
 int PIPESTAT (int) ;
 int POSTING_READ (int) ;

void
i915_enable_pipestat(drm_i915_private_t *dev_priv, int pipe, u32 mask)
{
 if ((dev_priv->pipestat[pipe] & mask) != mask) {
  u32 reg = PIPESTAT(pipe);

  dev_priv->pipestat[pipe] |= mask;

  I915_WRITE(reg, dev_priv->pipestat[pipe] | (mask >> 16));
  POSTING_READ(reg);
 }
}
