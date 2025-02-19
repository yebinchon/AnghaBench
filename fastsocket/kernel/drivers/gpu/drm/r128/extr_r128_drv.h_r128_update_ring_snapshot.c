
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int space; int tail; scalar_t__ size; } ;
typedef TYPE_1__ drm_r128_ring_buffer_t ;
struct TYPE_6__ {TYPE_1__ ring; } ;
typedef TYPE_2__ drm_r128_private_t ;


 int GET_RING_HEAD (TYPE_2__*) ;

__attribute__((used)) static __inline__ void r128_update_ring_snapshot(drm_r128_private_t *dev_priv)
{
 drm_r128_ring_buffer_t *ring = &dev_priv->ring;
 ring->space = (GET_RING_HEAD(dev_priv) - ring->tail) * sizeof(u32);
 if (ring->space <= 0)
  ring->space += ring->size;
}
