
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int rop_nr; } ;


 int ROP_UNIT (int,int) ;
 int nv_wr32 (struct nvc0_graph_priv*,int ,int) ;

__attribute__((used)) static void
nve0_graph_init_rop(struct nvc0_graph_priv *priv)
{
 int rop;

 for (rop = 0; rop < priv->rop_nr; rop++) {
  nv_wr32(priv, ROP_UNIT(rop, 0x144), 0xc0000000);
  nv_wr32(priv, ROP_UNIT(rop, 0x070), 0xc0000000);
  nv_wr32(priv, ROP_UNIT(rop, 0x204), 0xffffffff);
  nv_wr32(priv, ROP_UNIT(rop, 0x208), 0xffffffff);
 }
}
