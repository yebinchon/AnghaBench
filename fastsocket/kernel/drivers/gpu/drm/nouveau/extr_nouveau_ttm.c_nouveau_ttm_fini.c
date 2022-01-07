
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mtrr; int bdev; } ;
struct nouveau_drm {TYPE_2__ ttm; TYPE_1__* dev; } ;
struct TYPE_3__ {int pdev; int struct_mutex; } ;


 int DRM_MTRR_WC ;
 int TTM_PL_TT ;
 int TTM_PL_VRAM ;
 int drm_mtrr_del (int,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_ttm_global_release (struct nouveau_drm*) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;
 int ttm_bo_clean_mm (int *,int ) ;
 int ttm_bo_device_release (int *) ;

void
nouveau_ttm_fini(struct nouveau_drm *drm)
{
 mutex_lock(&drm->dev->struct_mutex);
 ttm_bo_clean_mm(&drm->ttm.bdev, TTM_PL_VRAM);
 ttm_bo_clean_mm(&drm->ttm.bdev, TTM_PL_TT);
 mutex_unlock(&drm->dev->struct_mutex);

 ttm_bo_device_release(&drm->ttm.bdev);

 nouveau_ttm_global_release(drm);

 if (drm->ttm.mtrr >= 0) {
  drm_mtrr_del(drm->ttm.mtrr,
        pci_resource_start(drm->dev->pdev, 1),
        pci_resource_len(drm->dev->pdev, 1), DRM_MTRR_WC);
  drm->ttm.mtrr = -1;
 }
}
