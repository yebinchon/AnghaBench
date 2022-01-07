
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvc0_bar_priv {int base; TYPE_2__* bar; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {TYPE_1__* pgt; } ;
struct TYPE_5__ {int mem; int pgd; TYPE_3__* vm; } ;
struct TYPE_4__ {int * obj; } ;


 int nouveau_bar_destroy (int *) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_vm_ref (int *,TYPE_3__**,int ) ;

__attribute__((used)) static void
nvc0_bar_dtor(struct nouveau_object *object)
{
 struct nvc0_bar_priv *priv = (void *)object;

 nouveau_vm_ref(((void*)0), &priv->bar[1].vm, priv->bar[1].pgd);
 nouveau_gpuobj_ref(((void*)0), &priv->bar[1].pgd);
 nouveau_gpuobj_ref(((void*)0), &priv->bar[1].mem);

 if (priv->bar[0].vm) {
  nouveau_gpuobj_ref(((void*)0), &priv->bar[0].vm->pgt[0].obj[0]);
  nouveau_vm_ref(((void*)0), &priv->bar[0].vm, priv->bar[0].pgd);
 }
 nouveau_gpuobj_ref(((void*)0), &priv->bar[0].pgd);
 nouveau_gpuobj_ref(((void*)0), &priv->bar[0].mem);

 nouveau_bar_destroy(&priv->base);
}
