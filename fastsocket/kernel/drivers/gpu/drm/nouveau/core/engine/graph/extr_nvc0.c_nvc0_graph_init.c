
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_graph_init (int *) ;
 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;
 int nvc0_graph_init_ctxctl (struct nvc0_graph_priv*) ;
 int nvc0_graph_init_gpc_0 (struct nvc0_graph_priv*) ;
 int nvc0_graph_init_gpc_1 (struct nvc0_graph_priv*) ;
 int nvc0_graph_init_obj418880 (struct nvc0_graph_priv*) ;
 int nvc0_graph_init_regs (struct nvc0_graph_priv*) ;
 int nvc0_graph_init_rop (struct nvc0_graph_priv*) ;
 int nvc0_graph_init_units (struct nvc0_graph_priv*) ;

__attribute__((used)) static int
nvc0_graph_init(struct nouveau_object *object)
{
 struct nvc0_graph_priv *priv = (void *)object;
 int ret;

 ret = nouveau_graph_init(&priv->base);
 if (ret)
  return ret;

 nvc0_graph_init_obj418880(priv);
 nvc0_graph_init_regs(priv);

 nvc0_graph_init_gpc_0(priv);


 nv_wr32(priv, 0x400500, 0x00010001);
 nv_wr32(priv, 0x400100, 0xffffffff);
 nv_wr32(priv, 0x40013c, 0xffffffff);

 nvc0_graph_init_units(priv);
 nvc0_graph_init_gpc_1(priv);
 nvc0_graph_init_rop(priv);

 nv_wr32(priv, 0x400108, 0xffffffff);
 nv_wr32(priv, 0x400138, 0xffffffff);
 nv_wr32(priv, 0x400118, 0xffffffff);
 nv_wr32(priv, 0x400130, 0xffffffff);
 nv_wr32(priv, 0x40011c, 0xffffffff);
 nv_wr32(priv, 0x400134, 0xffffffff);
 nv_wr32(priv, 0x400054, 0x34ce3464);

 ret = nvc0_graph_init_ctxctl(priv);
 if (ret)
  return ret;

 return 0;
}
