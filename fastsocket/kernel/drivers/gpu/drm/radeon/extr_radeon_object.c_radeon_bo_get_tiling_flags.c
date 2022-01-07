
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_bo {int pitch; int tiling_flags; } ;


 int BUG_ON (int) ;
 int radeon_bo_is_reserved (struct radeon_bo*) ;

void radeon_bo_get_tiling_flags(struct radeon_bo *bo,
    uint32_t *tiling_flags,
    uint32_t *pitch)
{
 BUG_ON(!radeon_bo_is_reserved(bo));
 if (tiling_flags)
  *tiling_flags = bo->tiling_flags;
 if (pitch)
  *pitch = bo->pitch;
}
