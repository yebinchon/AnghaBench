
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int gpc_nr; int* tpc_nr; } ;


 int GPC_UNIT (int,int) ;
 int TPC_UNIT (int,int,int) ;
 int nv_wr32 (struct nvc0_graph_priv*,int ,int) ;

__attribute__((used)) static void
nve0_graph_init_gpc_1(struct nvc0_graph_priv *priv)
{
 int gpc, tpc;

 for (gpc = 0; gpc < priv->gpc_nr; gpc++) {
  nv_wr32(priv, GPC_UNIT(gpc, 0x3038), 0xc0000000);
  nv_wr32(priv, GPC_UNIT(gpc, 0x0420), 0xc0000000);
  nv_wr32(priv, GPC_UNIT(gpc, 0x0900), 0xc0000000);
  nv_wr32(priv, GPC_UNIT(gpc, 0x1028), 0xc0000000);
  nv_wr32(priv, GPC_UNIT(gpc, 0x0824), 0xc0000000);
  for (tpc = 0; tpc < priv->tpc_nr[gpc]; tpc++) {
   nv_wr32(priv, TPC_UNIT(gpc, tpc, 0x508), 0xffffffff);
   nv_wr32(priv, TPC_UNIT(gpc, tpc, 0x50c), 0xffffffff);
   nv_wr32(priv, TPC_UNIT(gpc, tpc, 0x224), 0xc0000000);
   nv_wr32(priv, TPC_UNIT(gpc, tpc, 0x48c), 0xc0000000);
   nv_wr32(priv, TPC_UNIT(gpc, tpc, 0x084), 0xc0000000);
   nv_wr32(priv, TPC_UNIT(gpc, tpc, 0x644), 0x001ffffe);
   nv_wr32(priv, TPC_UNIT(gpc, tpc, 0x64c), 0x0000000f);
  }
  nv_wr32(priv, GPC_UNIT(gpc, 0x2c90), 0xffffffff);
  nv_wr32(priv, GPC_UNIT(gpc, 0x2c94), 0xffffffff);
 }
}
