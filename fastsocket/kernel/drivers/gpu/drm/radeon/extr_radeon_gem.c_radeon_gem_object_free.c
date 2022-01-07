
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sg; } ;
struct TYPE_4__ {scalar_t__ import_attach; } ;
struct radeon_bo {TYPE_1__ tbo; TYPE_2__ gem_base; } ;
struct drm_gem_object {int dummy; } ;


 int drm_prime_gem_destroy (TYPE_2__*,int ) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_unref (struct radeon_bo**) ;

void radeon_gem_object_free(struct drm_gem_object *gobj)
{
 struct radeon_bo *robj = gem_to_radeon_bo(gobj);

 if (robj) {
  if (robj->gem_base.import_attach)
   drm_prime_gem_destroy(&robj->gem_base, robj->tbo.sg);
  radeon_bo_unref(&robj);
 }
}
