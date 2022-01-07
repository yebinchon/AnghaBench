
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvc0_bar_priv {TYPE_2__* bar; int base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int addr; } ;


 int nouveau_bar_init (int *) ;
 int nv_mask (struct nvc0_bar_priv*,int,int,int) ;
 int nv_wr32 (struct nvc0_bar_priv*,int,int) ;

__attribute__((used)) static int
nvc0_bar_init(struct nouveau_object *object)
{
 struct nvc0_bar_priv *priv = (void *)object;
 int ret;

 ret = nouveau_bar_init(&priv->base);
 if (ret)
  return ret;

 nv_mask(priv, 0x000200, 0x00000100, 0x00000000);
 nv_mask(priv, 0x000200, 0x00000100, 0x00000100);
 nv_mask(priv, 0x100c80, 0x00000001, 0x00000000);

 nv_wr32(priv, 0x001704, 0x80000000 | priv->bar[1].mem->addr >> 12);
 nv_wr32(priv, 0x001714, 0xc0000000 | priv->bar[0].mem->addr >> 12);
 return 0;
}
