
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv04_vmmgr_priv {int base; TYPE_2__* vm; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int addr; } ;
struct TYPE_4__ {TYPE_1__* pgt; } ;
struct TYPE_3__ {struct nouveau_gpuobj** obj; } ;


 int nouveau_vmmgr_init (int *) ;
 int nv_mask (struct nv04_vmmgr_priv*,int,int,int) ;
 int nv_wr32 (struct nv04_vmmgr_priv*,int,int) ;

__attribute__((used)) static int
nv41_vmmgr_init(struct nouveau_object *object)
{
 struct nv04_vmmgr_priv *priv = (void *)object;
 struct nouveau_gpuobj *dma = priv->vm->pgt[0].obj[0];
 int ret;

 ret = nouveau_vmmgr_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x100800, dma->addr | 0x00000002);
 nv_mask(priv, 0x10008c, 0x00000100, 0x00000100);
 nv_wr32(priv, 0x100820, 0x00000000);
 return 0;
}
