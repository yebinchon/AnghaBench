
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_placement {scalar_t__ fpfn; scalar_t__ lpfn; } ;
struct TYPE_2__ {scalar_t__ num_pages; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;


 int BUG_ON (int) ;

int ttm_bo_check_placement(struct ttm_buffer_object *bo,
    struct ttm_placement *placement)
{
 BUG_ON((placement->fpfn || placement->lpfn) &&
        (bo->mem.num_pages > (placement->lpfn - placement->fpfn)));

 return 0;
}
