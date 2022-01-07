
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_fpriv {int vm; } ;
struct TYPE_2__ {int bo; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ ring_tmp_bo; } ;
struct radeon_bo_va {int dummy; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ CHIP_CAYMAN ;
 int kfree (struct radeon_fpriv*) ;
 int radeon_bo_reserve (int ,int) ;
 int radeon_bo_unreserve (int ) ;
 struct radeon_bo_va* radeon_vm_bo_find (int *,int ) ;
 int radeon_vm_bo_rmv (struct radeon_device*,struct radeon_bo_va*) ;
 int radeon_vm_fini (struct radeon_device*,int *) ;

void radeon_driver_postclose_kms(struct drm_device *dev,
     struct drm_file *file_priv)
{
 struct radeon_device *rdev = dev->dev_private;


 if (rdev->family >= CHIP_CAYMAN && file_priv->driver_priv) {
  struct radeon_fpriv *fpriv = file_priv->driver_priv;
  struct radeon_bo_va *bo_va;
  int r;

  r = radeon_bo_reserve(rdev->ring_tmp_bo.bo, 0);
  if (!r) {
   bo_va = radeon_vm_bo_find(&fpriv->vm,
        rdev->ring_tmp_bo.bo);
   if (bo_va)
    radeon_vm_bo_rmv(rdev, bo_va);
   radeon_bo_unreserve(rdev->ring_tmp_bo.bo);
  }

  radeon_vm_fini(rdev, &fpriv->vm);
  kfree(fpriv);
  file_priv->driver_priv = ((void*)0);
 }
}
