
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nve0_graph_generate_unk44xx(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x404404, 0x0);
 nv_wr32(priv, 0x404408, 0x0);
 nv_wr32(priv, 0x40440c, 0x0);
 nv_wr32(priv, 0x404410, 0x0);
 nv_wr32(priv, 0x404414, 0x0);
 nv_wr32(priv, 0x404418, 0x0);
 nv_wr32(priv, 0x40441c, 0x0);
 nv_wr32(priv, 0x404420, 0x0);
 nv_wr32(priv, 0x404424, 0x0);
 nv_wr32(priv, 0x404428, 0x0);
 nv_wr32(priv, 0x40442c, 0x0);
 nv_wr32(priv, 0x404430, 0x0);
 nv_wr32(priv, 0x404434, 0x0);
 nv_wr32(priv, 0x404438, 0x0);
 nv_wr32(priv, 0x404460, 0x0);
 nv_wr32(priv, 0x404464, 0x0);
 nv_wr32(priv, 0x404468, 0xffffff);
 nv_wr32(priv, 0x40446c, 0x0);
 nv_wr32(priv, 0x404480, 0x1);
 nv_wr32(priv, 0x404498, 0x1);
}
