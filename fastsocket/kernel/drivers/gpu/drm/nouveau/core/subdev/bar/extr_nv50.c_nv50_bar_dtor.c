
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv50_bar_priv {int base; int mem; int pad; int pgd; TYPE_2__* bar3_vm; int bar3; TYPE_2__* bar1_vm; int bar1; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pgt; } ;
struct TYPE_3__ {int * obj; } ;


 int nouveau_bar_destroy (int *) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_vm_ref (int *,TYPE_2__**,int ) ;

__attribute__((used)) static void
nv50_bar_dtor(struct nouveau_object *object)
{
 struct nv50_bar_priv *priv = (void *)object;
 nouveau_gpuobj_ref(((void*)0), &priv->bar1);
 nouveau_vm_ref(((void*)0), &priv->bar1_vm, priv->pgd);
 nouveau_gpuobj_ref(((void*)0), &priv->bar3);
 if (priv->bar3_vm) {
  nouveau_gpuobj_ref(((void*)0), &priv->bar3_vm->pgt[0].obj[0]);
  nouveau_vm_ref(((void*)0), &priv->bar3_vm, priv->pgd);
 }
 nouveau_gpuobj_ref(((void*)0), &priv->pgd);
 nouveau_gpuobj_ref(((void*)0), &priv->pad);
 nouveau_gpuobj_ref(((void*)0), &priv->mem);
 nouveau_bar_destroy(&priv->base);
}
