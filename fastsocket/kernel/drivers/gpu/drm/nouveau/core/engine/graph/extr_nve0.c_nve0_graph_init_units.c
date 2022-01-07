
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_mask (struct nvc0_graph_priv*,int,int,int) ;
 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nve0_graph_init_units(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x409ffc, 0x00000000);
 nv_wr32(priv, 0x409c14, 0x00003e3e);
 nv_wr32(priv, 0x409c24, 0x000f0000);

 nv_wr32(priv, 0x404000, 0xc0000000);
 nv_wr32(priv, 0x404600, 0xc0000000);
 nv_wr32(priv, 0x408030, 0xc0000000);
 nv_wr32(priv, 0x404490, 0xc0000000);
 nv_wr32(priv, 0x406018, 0xc0000000);
 nv_wr32(priv, 0x407020, 0xc0000000);
 nv_wr32(priv, 0x405840, 0xc0000000);
 nv_wr32(priv, 0x405844, 0x00ffffff);

 nv_mask(priv, 0x419cc0, 0x00000008, 0x00000008);
 nv_mask(priv, 0x419eb4, 0x00001000, 0x00001000);

}
