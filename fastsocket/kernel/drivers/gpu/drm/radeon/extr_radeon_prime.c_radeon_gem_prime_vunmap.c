
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int dma_buf_vmap; } ;
struct drm_gem_object {int dummy; } ;


 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int ttm_bo_kunmap (int *) ;

void radeon_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 struct radeon_bo *bo = gem_to_radeon_bo(obj);

 ttm_bo_kunmap(&bo->dma_buf_vmap);
}
