
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nve0_graph_generate_unk88xx(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x408800, 0x2802a3c);
 nv_wr32(priv, 0x408804, 0x40);
 nv_wr32(priv, 0x408808, 0x1043e005);
 nv_wr32(priv, 0x408840, 0xb);
 nv_wr32(priv, 0x408900, 0x3080b801);
 nv_wr32(priv, 0x408904, 0x62000001);
 nv_wr32(priv, 0x408908, 0xc8102f);
 nv_wr32(priv, 0x408980, 0x11d);
}
