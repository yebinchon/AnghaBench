
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nvc0_grctx_generate_tpbus(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x407804, 0x00000023);
 nv_wr32(priv, 0x40780c, 0x0a418820);
 nv_wr32(priv, 0x407810, 0x062080e6);
 nv_wr32(priv, 0x407814, 0x020398a4);
 nv_wr32(priv, 0x407818, 0x0e629062);
 nv_wr32(priv, 0x40781c, 0x0a418820);
 nv_wr32(priv, 0x407820, 0x000000e6);
 nv_wr32(priv, 0x4078bc, 0x00000103);
}
