
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int tail; int space; int tail_mask; int * start; } ;
struct TYPE_6__ {int flags; TYPE_1__ ring; } ;
typedef TYPE_2__ drm_radeon_private_t ;


 int CHIP_R600 ;
 int CP_PACKET2 () ;
 int DRM_MEMORYBARRIER () ;
 int GET_RING_HEAD (TYPE_2__*) ;
 int R600_CP_RB_RPTR ;
 int R600_CP_RB_WPTR ;
 int RADEON_CP_RB_RPTR ;
 int RADEON_CP_RB_WPTR ;
 int RADEON_FAMILY_MASK ;
 int RADEON_READ (int ) ;
 int RADEON_RING_ALIGN ;
 int RADEON_WRITE (int ,int) ;

void radeon_commit_ring(drm_radeon_private_t *dev_priv)
{
 int i;
 u32 *ring;
 int tail_aligned;



 tail_aligned = dev_priv->ring.tail & (RADEON_RING_ALIGN-1);
 if (tail_aligned) {
  int num_p2 = RADEON_RING_ALIGN - tail_aligned;

  ring = dev_priv->ring.start;

  for (i = 0; i < num_p2; i++)
   ring[dev_priv->ring.tail + i] = CP_PACKET2();

  dev_priv->ring.tail += i;

  dev_priv->ring.space -= num_p2 * sizeof(u32);
 }

 dev_priv->ring.tail &= dev_priv->ring.tail_mask;

 DRM_MEMORYBARRIER();
 GET_RING_HEAD( dev_priv );

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600) {
  RADEON_WRITE(R600_CP_RB_WPTR, dev_priv->ring.tail);

  RADEON_READ(R600_CP_RB_RPTR);
 } else {
  RADEON_WRITE(RADEON_CP_RB_WPTR, dev_priv->ring.tail);

  RADEON_READ(RADEON_CP_RB_RPTR);
 }
}
