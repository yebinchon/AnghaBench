
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
struct TYPE_4__ {TYPE_1__ bar; } ;
struct nvc0_fifo_priv {int spoon_nr; TYPE_2__ user; int base; } ;
struct nouveau_object {int dummy; } ;


 int hweight32 (int ) ;
 int nouveau_fifo_init (int *) ;
 int nv_debug (struct nvc0_fifo_priv*,char*,int) ;
 int nv_mask (struct nvc0_fifo_priv*,int,int,int) ;
 int nv_rd32 (struct nvc0_fifo_priv*,int) ;
 int nv_wr32 (struct nvc0_fifo_priv*,int,int) ;

__attribute__((used)) static int
nvc0_fifo_init(struct nouveau_object *object)
{
 struct nvc0_fifo_priv *priv = (void *)object;
 int ret, i;

 ret = nouveau_fifo_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x000204, 0xffffffff);
 nv_wr32(priv, 0x002204, 0xffffffff);

 priv->spoon_nr = hweight32(nv_rd32(priv, 0x002204));
 nv_debug(priv, "%d subfifo(s)\n", priv->spoon_nr);


 if (priv->spoon_nr >= 3) {
  nv_wr32(priv, 0x002208, ~(1 << 0));
  nv_wr32(priv, 0x00220c, ~(1 << 1));
  nv_wr32(priv, 0x002210, ~(1 << 1));
  nv_wr32(priv, 0x002214, ~(1 << 1));
  nv_wr32(priv, 0x002218, ~(1 << 2));
  nv_wr32(priv, 0x00221c, ~(1 << 1));
 }


 for (i = 0; i < priv->spoon_nr; i++) {
  nv_mask(priv, 0x04013c + (i * 0x2000), 0x10000100, 0x00000000);
  nv_wr32(priv, 0x040108 + (i * 0x2000), 0xffffffff);
  nv_wr32(priv, 0x04010c + (i * 0x2000), 0xfffffeff);
 }

 nv_mask(priv, 0x002200, 0x00000001, 0x00000001);
 nv_wr32(priv, 0x002254, 0x10000000 | priv->user.bar.offset >> 12);

 nv_wr32(priv, 0x002a00, 0xffffffff);
 nv_wr32(priv, 0x002100, 0xffffffff);
 nv_wr32(priv, 0x002140, 0x3fffffff);
 nv_wr32(priv, 0x002628, 0x00000001);
 return 0;
}
