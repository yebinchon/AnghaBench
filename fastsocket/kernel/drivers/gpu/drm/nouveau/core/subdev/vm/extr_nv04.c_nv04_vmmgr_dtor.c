
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nv04_vmmgr_priv {int base; int null; scalar_t__ nullp; TYPE_3__* vm; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {TYPE_1__* pgt; } ;
struct TYPE_5__ {int pdev; } ;
struct TYPE_4__ {int * obj; } ;


 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_vm_ref (int *,TYPE_3__**,int *) ;
 int nouveau_vmmgr_destroy (int *) ;
 TYPE_2__* nv_device (struct nv04_vmmgr_priv*) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;

void
nv04_vmmgr_dtor(struct nouveau_object *object)
{
 struct nv04_vmmgr_priv *priv = (void *)object;
 if (priv->vm) {
  nouveau_gpuobj_ref(((void*)0), &priv->vm->pgt[0].obj[0]);
  nouveau_vm_ref(((void*)0), &priv->vm, ((void*)0));
 }
 if (priv->nullp) {
  pci_free_consistent(nv_device(priv)->pdev, 16 * 1024,
        priv->nullp, priv->null);
 }
 nouveau_vmmgr_destroy(&priv->base);
}
