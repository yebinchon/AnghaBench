
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_grctx {int chan; struct nvc0_graph_priv* priv; } ;
struct nvc0_graph_priv {int size; int * data; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (int,int ) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nv_error (struct nvc0_graph_priv*,char*) ;
 int nv_mask (struct nvc0_graph_priv*,int,int,int) ;
 int nv_ro32 (int ,int) ;
 int nv_wait (struct nvc0_graph_priv*,int,int,int) ;
 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

int
nvc0_grctx_fini(struct nvc0_grctx *info)
{
 struct nvc0_graph_priv *priv = info->priv;
 int i;




 nv_mask(priv, 0x409b04, 0x80000000, 0x00000000);
 nv_wr32(priv, 0x409000, 0x00000100);
 if (!nv_wait(priv, 0x409b00, 0x80000000, 0x00000000)) {
  nv_error(priv, "grctx template channel unload timeout\n");
  return -EBUSY;
 }

 priv->data = kmalloc(priv->size, GFP_KERNEL);
 if (priv->data) {
  for (i = 0; i < priv->size; i += 4)
   priv->data[i / 4] = nv_ro32(info->chan, 0x80000 + i);
 }

 nouveau_gpuobj_ref(((void*)0), &info->chan);
 return priv->data ? 0 : -ENOMEM;
}
