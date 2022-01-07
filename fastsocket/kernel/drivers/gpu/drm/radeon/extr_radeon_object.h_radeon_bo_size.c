
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long num_pages; } ;
struct radeon_bo {TYPE_1__ tbo; } ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static inline unsigned long radeon_bo_size(struct radeon_bo *bo)
{
 return bo->tbo.num_pages << PAGE_SHIFT;
}
