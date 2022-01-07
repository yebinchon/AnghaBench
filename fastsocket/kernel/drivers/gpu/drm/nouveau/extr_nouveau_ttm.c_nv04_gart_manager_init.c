
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {struct nouveau_vm* priv; int bdev; } ;
struct nv04_vmmgr_priv {int vm; } ;
struct nouveau_vmmgr {int dummy; } ;
struct nouveau_vm {int dummy; } ;
struct nouveau_drm {int device; } ;


 struct nouveau_drm* nouveau_bdev (int ) ;
 int nouveau_vm_ref (int ,struct nouveau_vm**,int *) ;
 struct nouveau_vmmgr* nouveau_vmmgr (int ) ;

__attribute__((used)) static int
nv04_gart_manager_init(struct ttm_mem_type_manager *man, unsigned long psize)
{
 struct nouveau_drm *drm = nouveau_bdev(man->bdev);
 struct nouveau_vmmgr *vmm = nouveau_vmmgr(drm->device);
 struct nv04_vmmgr_priv *priv = (void *)vmm;
 struct nouveau_vm *vm = ((void*)0);
 nouveau_vm_ref(priv->vm, &vm, ((void*)0));
 man->priv = vm;
 return 0;
}
