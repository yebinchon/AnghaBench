
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 scalar_t__ likely (int) ;
 int radeon_bo_kunmap (struct radeon_bo*) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;

__attribute__((used)) static void radeonfb_destroy_pinned_object(struct drm_gem_object *gobj)
{
 struct radeon_bo *rbo = gem_to_radeon_bo(gobj);
 int ret;

 ret = radeon_bo_reserve(rbo, 0);
 if (likely(ret == 0)) {
  radeon_bo_kunmap(rbo);
  radeon_bo_unpin(rbo);
  radeon_bo_unreserve(rbo);
 }
 drm_gem_object_unreference_unlocked(gobj);
}
