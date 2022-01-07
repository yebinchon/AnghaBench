
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_vmmgr {int (* map_pgt ) (struct nouveau_gpuobj*,int,int ) ;} ;
struct nouveau_vm_pgd {int head; int obj; } ;
struct TYPE_4__ {int mutex; } ;
struct nouveau_vm {int fpde; int lpde; TYPE_2__ mm; int pgd_list; TYPE_1__* pgt; struct nouveau_vmmgr* vmm; } ;
struct nouveau_gpuobj {int dummy; } ;
struct TYPE_3__ {int obj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nouveau_vm_pgd* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_gpuobj_ref (struct nouveau_gpuobj*,int *) ;
 int stub1 (struct nouveau_gpuobj*,int,int ) ;

__attribute__((used)) static int
nouveau_vm_link(struct nouveau_vm *vm, struct nouveau_gpuobj *pgd)
{
 struct nouveau_vmmgr *vmm = vm->vmm;
 struct nouveau_vm_pgd *vpgd;
 int i;

 if (!pgd)
  return 0;

 vpgd = kzalloc(sizeof(*vpgd), GFP_KERNEL);
 if (!vpgd)
  return -ENOMEM;

 nouveau_gpuobj_ref(pgd, &vpgd->obj);

 mutex_lock(&vm->mm.mutex);
 for (i = vm->fpde; i <= vm->lpde; i++)
  vmm->map_pgt(pgd, i, vm->pgt[i - vm->fpde].obj);
 list_add(&vpgd->head, &vm->pgd_list);
 mutex_unlock(&vm->mm.mutex);
 return 0;
}
