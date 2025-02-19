
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ mem_type; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;
struct nouveau_bo {int valid_domains; struct ttm_buffer_object bo; } ;
struct drm_gem_object {struct nouveau_bo* driver_private; } ;


 int EINVAL ;
 int NOUVEAU_GEM_DOMAIN_GART ;
 int NOUVEAU_GEM_DOMAIN_VRAM ;
 int TTM_PL_FLAG_TT ;
 int TTM_PL_FLAG_VRAM ;
 scalar_t__ TTM_PL_TT ;
 scalar_t__ TTM_PL_VRAM ;
 int nouveau_bo_placement_set (struct nouveau_bo*,int,int) ;

__attribute__((used)) static int
nouveau_gem_set_domain(struct drm_gem_object *gem, uint32_t read_domains,
         uint32_t write_domains, uint32_t valid_domains)
{
 struct nouveau_bo *nvbo = gem->driver_private;
 struct ttm_buffer_object *bo = &nvbo->bo;
 uint32_t domains = valid_domains & nvbo->valid_domains &
  (write_domains ? write_domains : read_domains);
 uint32_t pref_flags = 0, valid_flags = 0;

 if (!domains)
  return -EINVAL;

 if (valid_domains & NOUVEAU_GEM_DOMAIN_VRAM)
  valid_flags |= TTM_PL_FLAG_VRAM;

 if (valid_domains & NOUVEAU_GEM_DOMAIN_GART)
  valid_flags |= TTM_PL_FLAG_TT;

 if ((domains & NOUVEAU_GEM_DOMAIN_VRAM) &&
     bo->mem.mem_type == TTM_PL_VRAM)
  pref_flags |= TTM_PL_FLAG_VRAM;

 else if ((domains & NOUVEAU_GEM_DOMAIN_GART) &&
   bo->mem.mem_type == TTM_PL_TT)
  pref_flags |= TTM_PL_FLAG_TT;

 else if (domains & NOUVEAU_GEM_DOMAIN_VRAM)
  pref_flags |= TTM_PL_FLAG_VRAM;

 else
  pref_flags |= TTM_PL_FLAG_TT;

 nouveau_bo_placement_set(nvbo, pref_flags, valid_flags);

 return 0;
}
