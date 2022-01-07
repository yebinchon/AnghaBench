
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_pgoff; } ;
struct TYPE_4__ {int bdev; } ;
struct nouveau_drm {TYPE_2__ ttm; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ DRM_FILE_PAGE_OFFSET ;
 int drm_mmap (struct file*,struct vm_area_struct*) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int ttm_bo_mmap (struct file*,struct vm_area_struct*,int *) ;
 scalar_t__ unlikely (int) ;

int
nouveau_ttm_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_file *file_priv = filp->private_data;
 struct nouveau_drm *drm = nouveau_drm(file_priv->minor->dev);

 if (unlikely(vma->vm_pgoff < DRM_FILE_PAGE_OFFSET))
  return drm_mmap(filp, vma);

 return ttm_bo_mmap(filp, vma, &drm->ttm.bdev);
}
