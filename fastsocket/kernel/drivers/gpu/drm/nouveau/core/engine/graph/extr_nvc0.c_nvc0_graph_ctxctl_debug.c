
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvc0_graph_priv {int dummy; } ;


 int nv_rd32 (struct nvc0_graph_priv*,int) ;
 int nvc0_graph_ctxctl_debug_unit (struct nvc0_graph_priv*,int) ;

void
nvc0_graph_ctxctl_debug(struct nvc0_graph_priv *priv)
{
 u32 gpcnr = nv_rd32(priv, 0x409604) & 0xffff;
 u32 gpc;

 nvc0_graph_ctxctl_debug_unit(priv, 0x409000);
 for (gpc = 0; gpc < gpcnr; gpc++)
  nvc0_graph_ctxctl_debug_unit(priv, 0x502000 + (gpc * 0x8000));
}
