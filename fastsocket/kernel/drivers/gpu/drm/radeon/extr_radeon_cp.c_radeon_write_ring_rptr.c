
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flags; TYPE_3__* ring_rptr; } ;
typedef TYPE_1__ drm_radeon_private_t ;
struct TYPE_5__ {scalar_t__ handle; } ;


 int DRM_WRITE32 (TYPE_3__*,int,int) ;
 int RADEON_IS_AGP ;
 int cpu_to_le32 (int) ;

void radeon_write_ring_rptr(drm_radeon_private_t *dev_priv, u32 off, u32 val)
{
 if (dev_priv->flags & RADEON_IS_AGP)
  DRM_WRITE32(dev_priv->ring_rptr, off, val);
 else
  *(((volatile u32 *) dev_priv->ring_rptr->handle) +
    (off / sizeof(u32))) = cpu_to_le32(val);
}
