
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int base; int unk4188b4; int unk4188b8; int fuc41ad; int fuc41ac; int fuc409d; int fuc409c; int data; } ;
struct nouveau_object {int dummy; } ;


 int kfree (int ) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_graph_destroy (int *) ;
 int nvc0_graph_dtor_fw (int *) ;

void
nvc0_graph_dtor(struct nouveau_object *object)
{
 struct nvc0_graph_priv *priv = (void *)object;

 kfree(priv->data);

 nvc0_graph_dtor_fw(&priv->fuc409c);
 nvc0_graph_dtor_fw(&priv->fuc409d);
 nvc0_graph_dtor_fw(&priv->fuc41ac);
 nvc0_graph_dtor_fw(&priv->fuc41ad);

 nouveau_gpuobj_ref(((void*)0), &priv->unk4188b8);
 nouveau_gpuobj_ref(((void*)0), &priv->unk4188b4);

 nouveau_graph_destroy(&priv->base);
}
