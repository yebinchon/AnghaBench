
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int num_pages; } ;
struct radeon_ttm_tt {int offset; int rdev; } ;


 int radeon_gart_unbind (int ,int ,int ) ;

__attribute__((used)) static int radeon_ttm_backend_unbind(struct ttm_tt *ttm)
{
 struct radeon_ttm_tt *gtt = (void *)ttm;

 radeon_gart_unbind(gtt->rdev, gtt->offset, ttm->num_pages);
 return 0;
}
