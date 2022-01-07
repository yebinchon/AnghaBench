
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int tbo; } ;


 int ttm_bo_unreserve (int *) ;

__attribute__((used)) static inline void radeon_bo_unreserve(struct radeon_bo *bo)
{
 ttm_bo_unreserve(&bo->tbo);
}
