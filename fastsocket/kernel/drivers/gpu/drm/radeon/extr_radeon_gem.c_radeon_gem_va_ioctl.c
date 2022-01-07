
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_fpriv {int vm; } ;
struct TYPE_3__ {int enabled; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;
struct radeon_bo_va {scalar_t__ soffset; } ;
struct radeon_bo {int dummy; } ;
struct drm_radeon_gem_va {int operation; scalar_t__ offset; int flags; int handle; scalar_t__ vm_id; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;
struct drm_device {TYPE_2__* pdev; struct radeon_device* dev_private; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOTTY ;

 scalar_t__ RADEON_VA_RESERVED_SIZE ;
 void* RADEON_VA_RESULT_ERROR ;
 int RADEON_VA_RESULT_OK ;
 int RADEON_VA_RESULT_VA_EXIST ;

 int RADEON_VM_PAGE_SNOOPED ;
 int RADEON_VM_PAGE_SYSTEM ;
 int RADEON_VM_PAGE_VALID ;
 int dev_err (int *,char*,...) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 struct radeon_bo_va* radeon_vm_bo_find (int *,struct radeon_bo*) ;
 int radeon_vm_bo_set_addr (struct radeon_device*,struct radeon_bo_va*,scalar_t__,int) ;

int radeon_gem_va_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 struct drm_radeon_gem_va *args = data;
 struct drm_gem_object *gobj;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_fpriv *fpriv = filp->driver_priv;
 struct radeon_bo *rbo;
 struct radeon_bo_va *bo_va;
 u32 invalid_flags;
 int r = 0;

 if (!rdev->vm_manager.enabled) {
  args->operation = RADEON_VA_RESULT_ERROR;
  return -ENOTTY;
 }






 if (args->vm_id) {
  args->operation = RADEON_VA_RESULT_ERROR;
  return -EINVAL;
 }

 if (args->offset < RADEON_VA_RESERVED_SIZE) {
  dev_err(&dev->pdev->dev,
   "offset 0x%lX is in reserved area 0x%X\n",
   (unsigned long)args->offset,
   RADEON_VA_RESERVED_SIZE);
  args->operation = RADEON_VA_RESULT_ERROR;
  return -EINVAL;
 }





 invalid_flags = RADEON_VM_PAGE_VALID | RADEON_VM_PAGE_SYSTEM;
 if ((args->flags & invalid_flags)) {
  dev_err(&dev->pdev->dev, "invalid flags 0x%08X vs 0x%08X\n",
   args->flags, invalid_flags);
  args->operation = RADEON_VA_RESULT_ERROR;
  return -EINVAL;
 }
 if (!(args->flags & RADEON_VM_PAGE_SNOOPED)) {
  dev_err(&dev->pdev->dev, "only supported snooped mapping for now\n");
  args->operation = RADEON_VA_RESULT_ERROR;
  return -EINVAL;
 }

 switch (args->operation) {
 case 129:
 case 128:
  break;
 default:
  dev_err(&dev->pdev->dev, "unsupported operation %d\n",
   args->operation);
  args->operation = RADEON_VA_RESULT_ERROR;
  return -EINVAL;
 }

 gobj = drm_gem_object_lookup(dev, filp, args->handle);
 if (gobj == ((void*)0)) {
  args->operation = RADEON_VA_RESULT_ERROR;
  return -ENOENT;
 }
 rbo = gem_to_radeon_bo(gobj);
 r = radeon_bo_reserve(rbo, 0);
 if (r) {
  args->operation = RADEON_VA_RESULT_ERROR;
  drm_gem_object_unreference_unlocked(gobj);
  return r;
 }
 bo_va = radeon_vm_bo_find(&fpriv->vm, rbo);
 if (!bo_va) {
  args->operation = RADEON_VA_RESULT_ERROR;
  drm_gem_object_unreference_unlocked(gobj);
  return -ENOENT;
 }

 switch (args->operation) {
 case 129:
  if (bo_va->soffset) {
   args->operation = RADEON_VA_RESULT_VA_EXIST;
   args->offset = bo_va->soffset;
   goto out;
  }
  r = radeon_vm_bo_set_addr(rdev, bo_va, args->offset, args->flags);
  break;
 case 128:
  r = radeon_vm_bo_set_addr(rdev, bo_va, 0, 0);
  break;
 default:
  break;
 }
 args->operation = RADEON_VA_RESULT_OK;
 if (r) {
  args->operation = RADEON_VA_RESULT_ERROR;
 }
out:
 radeon_bo_unreserve(rbo);
 drm_gem_object_unreference_unlocked(gobj);
 return r;
}
