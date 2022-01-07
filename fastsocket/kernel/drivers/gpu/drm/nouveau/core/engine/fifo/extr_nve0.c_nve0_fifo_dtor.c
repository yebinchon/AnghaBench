
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mem; int bar; } ;
struct nve0_fifo_priv {int base; TYPE_2__* engine; TYPE_1__ user; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int * playlist; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int nouveau_fifo_destroy (int *) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_gpuobj_unmap (int *) ;

__attribute__((used)) static void
nve0_fifo_dtor(struct nouveau_object *object)
{
 struct nve0_fifo_priv *priv = (void *)object;
 int i;

 nouveau_gpuobj_unmap(&priv->user.bar);
 nouveau_gpuobj_ref(((void*)0), &priv->user.mem);

 for (i = 0; i < ARRAY_SIZE(priv->engine); i++) {
  nouveau_gpuobj_ref(((void*)0), &priv->engine[i].playlist[1]);
  nouveau_gpuobj_ref(((void*)0), &priv->engine[i].playlist[0]);
 }

 nouveau_fifo_destroy(&priv->base);
}
