
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_fifo_priv {int base; int * playlist; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fifo_destroy (int *) ;
 int nouveau_gpuobj_ref (int *,int *) ;

void
nv50_fifo_dtor(struct nouveau_object *object)
{
 struct nv50_fifo_priv *priv = (void *)object;

 nouveau_gpuobj_ref(((void*)0), &priv->playlist[1]);
 nouveau_gpuobj_ref(((void*)0), &priv->playlist[0]);

 nouveau_fifo_destroy(&priv->base);
}
