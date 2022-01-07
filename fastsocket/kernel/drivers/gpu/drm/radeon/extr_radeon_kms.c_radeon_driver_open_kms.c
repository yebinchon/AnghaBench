
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
 int ENOMEM ;
 int GFP_KERNEL ;
 int RADEON_VA_IB_OFFSET ;
 int RADEON_VM_PAGE_READABLE ;
 int RADEON_VM_PAGE_SNOOPED ;
 int kfree (struct radeon_fpriv*) ;
 struct radeon_fpriv* kzalloc (int,int ) ;
 struct radeon_bo_va* radeon_vm_bo_add (struct radeon_device*,int *,int ) ;
 int radeon_vm_bo_set_addr (struct radeon_device*,struct radeon_bo_va*,int ,int) ;
 int radeon_vm_fini (struct radeon_device*,int *) ;
 int radeon_vm_init (struct radeon_device*,int *) ;
 scalar_t__ unlikely (int) ;

int radeon_driver_open_kms(struct drm_device *dev, struct drm_file *file_priv)
{
 struct radeon_device *rdev = dev->dev_private;

 file_priv->driver_priv = ((void*)0);


 if (rdev->family >= CHIP_CAYMAN) {
  struct radeon_fpriv *fpriv;
  struct radeon_bo_va *bo_va;
  int r;

  fpriv = kzalloc(sizeof(*fpriv), GFP_KERNEL);
  if (unlikely(!fpriv)) {
   return -ENOMEM;
  }

  radeon_vm_init(rdev, &fpriv->vm);



  bo_va = radeon_vm_bo_add(rdev, &fpriv->vm,
      rdev->ring_tmp_bo.bo);
  r = radeon_vm_bo_set_addr(rdev, bo_va, RADEON_VA_IB_OFFSET,
       RADEON_VM_PAGE_READABLE |
       RADEON_VM_PAGE_SNOOPED);
  if (r) {
   radeon_vm_fini(rdev, &fpriv->vm);
   kfree(fpriv);
   return r;
  }

  file_priv->driver_priv = fpriv;
 }
 return 0;
}
