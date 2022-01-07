
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvc0_graph_priv {int dummy; } ;


 int nv_rd32 (struct nvc0_graph_priv*,int) ;
 int nv_wr32 (struct nvc0_graph_priv*,int,int ) ;

void
nv_icmd(struct nvc0_graph_priv *priv, u32 icmd, u32 data)
{
 nv_wr32(priv, 0x400204, data);
 nv_wr32(priv, 0x400200, icmd);
 while (nv_rd32(priv, 0x400700) & 2) {}
}
