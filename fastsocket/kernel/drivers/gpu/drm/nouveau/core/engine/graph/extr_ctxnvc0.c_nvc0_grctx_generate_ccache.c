
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nvc0_grctx_generate_ccache(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x408000, 0x00000000);
 nv_wr32(priv, 0x408004, 0x00000000);
 nv_wr32(priv, 0x408008, 0x00000018);
 nv_wr32(priv, 0x40800c, 0x00000000);
 nv_wr32(priv, 0x408010, 0x00000000);
 nv_wr32(priv, 0x408014, 0x00000069);
 nv_wr32(priv, 0x408018, 0xe100e100);
 nv_wr32(priv, 0x408064, 0x00000000);
}
