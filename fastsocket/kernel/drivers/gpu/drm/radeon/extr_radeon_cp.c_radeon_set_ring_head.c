
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_radeon_private_t ;


 int radeon_write_ring_rptr (int *,int ,int ) ;

void radeon_set_ring_head(drm_radeon_private_t *dev_priv, u32 val)
{
 radeon_write_ring_rptr(dev_priv, 0, val);
}
