
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nvc0_graph_init_regs(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x400080, 0x003083c2);
 nv_wr32(priv, 0x400088, 0x00006fe7);
 nv_wr32(priv, 0x40008c, 0x00000000);
 nv_wr32(priv, 0x400090, 0x00000030);
 nv_wr32(priv, 0x40013c, 0x013901f7);
 nv_wr32(priv, 0x400140, 0x00000100);
 nv_wr32(priv, 0x400144, 0x00000000);
 nv_wr32(priv, 0x400148, 0x00000110);
 nv_wr32(priv, 0x400138, 0x00000000);
 nv_wr32(priv, 0x400130, 0x00000000);
 nv_wr32(priv, 0x400134, 0x00000000);
 nv_wr32(priv, 0x400124, 0x00000002);
}
