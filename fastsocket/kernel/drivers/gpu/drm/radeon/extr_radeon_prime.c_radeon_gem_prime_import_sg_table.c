
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_2__ {int mutex; int objects; } ;
struct radeon_device {TYPE_1__ gem; } ;
struct drm_gem_object {struct radeon_bo* driver_private; } ;
struct radeon_bo {struct drm_gem_object gem_base; int list; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 struct drm_gem_object* ERR_PTR (int) ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_GTT ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_bo_create (struct radeon_device*,size_t,int ,int,int ,struct sg_table*,struct radeon_bo**) ;

struct drm_gem_object *radeon_gem_prime_import_sg_table(struct drm_device *dev,
       size_t size,
       struct sg_table *sg)
{
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_bo *bo;
 int ret;

 ret = radeon_bo_create(rdev, size, PAGE_SIZE, 0,
          RADEON_GEM_DOMAIN_GTT, sg, &bo);
 if (ret)
  return ERR_PTR(ret);
 bo->gem_base.driver_private = bo;

 mutex_lock(&rdev->gem.mutex);
 list_add_tail(&bo->list, &rdev->gem.objects);
 mutex_unlock(&rdev->gem.mutex);

 return &bo->gem_base;
}
