
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int tail; } ;
struct TYPE_6__ {TYPE_1__ ring; } ;
typedef TYPE_2__ drm_radeon_private_t ;


 int DRM_DEBUG (char*) ;
 int R600_CP_RB_RPTR ;
 int R600_CP_RB_WPTR ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int ) ;
 int SET_RING_HEAD (TYPE_2__*,int ) ;

void r600_do_cp_reset(drm_radeon_private_t *dev_priv)
{
 u32 cur_read_ptr;
 DRM_DEBUG("\n");

 cur_read_ptr = RADEON_READ(R600_CP_RB_RPTR);
 RADEON_WRITE(R600_CP_RB_WPTR, cur_read_ptr);
 SET_RING_HEAD(dev_priv, cur_read_ptr);
 dev_priv->ring.tail = cur_read_ptr;
}
