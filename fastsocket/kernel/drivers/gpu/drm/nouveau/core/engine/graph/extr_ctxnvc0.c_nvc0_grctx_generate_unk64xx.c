
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvc0_graph_priv {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 TYPE_1__* nv_device (struct nvc0_graph_priv*) ;
 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nvc0_grctx_generate_unk64xx(struct nvc0_graph_priv *priv)
{

 nv_wr32(priv, 0x4064a8, 0x00000000);
 nv_wr32(priv, 0x4064ac, 0x00003fff);
 nv_wr32(priv, 0x4064b4, 0x00000000);
 nv_wr32(priv, 0x4064b8, 0x00000000);
 if (nv_device(priv)->chipset == 0xd9)
  nv_wr32(priv, 0x4064bc, 0x00000000);
 if (nv_device(priv)->chipset == 0xc1 ||
     nv_device(priv)->chipset == 0xd9) {
  nv_wr32(priv, 0x4064c0, 0x80140078);
  nv_wr32(priv, 0x4064c4, 0x0086ffff);
 }
}
