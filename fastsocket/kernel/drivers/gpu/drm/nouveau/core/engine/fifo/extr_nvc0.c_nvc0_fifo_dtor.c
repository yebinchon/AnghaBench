
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem; int bar; } ;
struct nvc0_fifo_priv {int base; int * playlist; TYPE_1__ user; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fifo_destroy (int *) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_gpuobj_unmap (int *) ;

__attribute__((used)) static void
nvc0_fifo_dtor(struct nouveau_object *object)
{
 struct nvc0_fifo_priv *priv = (void *)object;

 nouveau_gpuobj_unmap(&priv->user.bar);
 nouveau_gpuobj_ref(((void*)0), &priv->user.mem);
 nouveau_gpuobj_ref(((void*)0), &priv->playlist[1]);
 nouveau_gpuobj_ref(((void*)0), &priv->playlist[0]);

 nouveau_fifo_destroy(&priv->base);
}
