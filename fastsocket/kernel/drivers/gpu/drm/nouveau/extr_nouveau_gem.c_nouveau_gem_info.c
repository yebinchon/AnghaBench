
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nouveau_vma {int offset; } ;
struct TYPE_4__ {scalar_t__ vm; } ;
struct nouveau_cli {TYPE_1__ base; } ;
struct TYPE_5__ {scalar_t__ mem_type; int num_pages; } ;
struct TYPE_6__ {int addr_space_offset; TYPE_2__ mem; int offset; } ;
struct nouveau_bo {int tile_flags; int tile_mode; TYPE_3__ bo; } ;
struct drm_nouveau_gem_info {int size; int tile_flags; int tile_mode; int map_handle; int offset; int domain; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 int EINVAL ;
 int NOUVEAU_GEM_DOMAIN_GART ;
 int NOUVEAU_GEM_DOMAIN_VRAM ;
 int PAGE_SHIFT ;
 scalar_t__ TTM_PL_TT ;
 struct nouveau_vma* nouveau_bo_vma_find (struct nouveau_bo*,scalar_t__) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;

__attribute__((used)) static int
nouveau_gem_info(struct drm_file *file_priv, struct drm_gem_object *gem,
   struct drm_nouveau_gem_info *rep)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 struct nouveau_bo *nvbo = nouveau_gem_object(gem);
 struct nouveau_vma *vma;

 if (nvbo->bo.mem.mem_type == TTM_PL_TT)
  rep->domain = NOUVEAU_GEM_DOMAIN_GART;
 else
  rep->domain = NOUVEAU_GEM_DOMAIN_VRAM;

 rep->offset = nvbo->bo.offset;
 if (cli->base.vm) {
  vma = nouveau_bo_vma_find(nvbo, cli->base.vm);
  if (!vma)
   return -EINVAL;

  rep->offset = vma->offset;
 }

 rep->size = nvbo->bo.mem.num_pages << PAGE_SHIFT;
 rep->map_handle = nvbo->bo.addr_space_offset;
 rep->tile_mode = nvbo->tile_mode;
 rep->tile_flags = nvbo->tile_flags;
 return 0;
}
