
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct radeon_bo {int tbo; } ;


 int ttm_fbdev_mmap (struct vm_area_struct*,int *) ;

int radeon_bo_fbdev_mmap(struct radeon_bo *bo,
        struct vm_area_struct *vma)
{
 return ttm_fbdev_mmap(vma, &bo->tbo);
}
