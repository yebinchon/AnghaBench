
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nv50_bar_priv {TYPE_5__* bar3; TYPE_3__* bar1; TYPE_1__* mem; int base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_10__ {TYPE_4__* node; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_8__ {TYPE_2__* node; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_6__ {int addr; } ;


 int nouveau_bar_init (int *) ;
 int nv50_vm_flush_engine (int ,int) ;
 int nv_mask (struct nv50_bar_priv*,int,int,int) ;
 int nv_subdev (struct nv50_bar_priv*) ;
 int nv_wr32 (struct nv50_bar_priv*,int,int) ;

__attribute__((used)) static int
nv50_bar_init(struct nouveau_object *object)
{
 struct nv50_bar_priv *priv = (void *)object;
 int ret;

 ret = nouveau_bar_init(&priv->base);
 if (ret)
  return ret;

 nv_mask(priv, 0x000200, 0x00000100, 0x00000000);
 nv_mask(priv, 0x000200, 0x00000100, 0x00000100);
 nv50_vm_flush_engine(nv_subdev(priv), 6);

 nv_wr32(priv, 0x001704, 0x00000000 | priv->mem->addr >> 12);
 nv_wr32(priv, 0x001704, 0x40000000 | priv->mem->addr >> 12);
 nv_wr32(priv, 0x001708, 0x80000000 | priv->bar1->node->offset >> 4);
 nv_wr32(priv, 0x00170c, 0x80000000 | priv->bar3->node->offset >> 4);
 return 0;
}
