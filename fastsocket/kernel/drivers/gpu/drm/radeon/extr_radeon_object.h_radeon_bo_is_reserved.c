
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int tbo; } ;


 int ttm_bo_is_reserved (int *) ;

__attribute__((used)) static inline bool radeon_bo_is_reserved(struct radeon_bo *bo)
{
 return ttm_bo_is_reserved(&bo->tbo);
}
