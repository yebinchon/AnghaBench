
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nve0_graph_generate_unk47xx(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x404700, 0x0);
 nv_wr32(priv, 0x404704, 0x0);
 nv_wr32(priv, 0x404708, 0x0);
 nv_wr32(priv, 0x404718, 0x0);
 nv_wr32(priv, 0x40471c, 0x0);
 nv_wr32(priv, 0x404720, 0x0);
 nv_wr32(priv, 0x404724, 0x0);
 nv_wr32(priv, 0x404728, 0x0);
 nv_wr32(priv, 0x40472c, 0x0);
 nv_wr32(priv, 0x404730, 0x0);
 nv_wr32(priv, 0x404734, 0x100);
 nv_wr32(priv, 0x404738, 0x0);
 nv_wr32(priv, 0x40473c, 0x0);
 nv_wr32(priv, 0x404744, 0x0);
 nv_wr32(priv, 0x404748, 0x0);
 nv_wr32(priv, 0x404754, 0x0);
}
