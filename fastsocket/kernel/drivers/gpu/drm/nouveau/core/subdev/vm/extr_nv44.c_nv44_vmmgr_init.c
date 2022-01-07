
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv04_vmmgr_priv {int null; int base; TYPE_2__* vm; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int addr; } ;
struct TYPE_4__ {TYPE_1__* pgt; } ;
struct TYPE_3__ {struct nouveau_gpuobj** obj; } ;


 int NV44_GART_SIZE ;
 int nouveau_vmmgr_init (int *) ;
 int nv_mask (struct nv04_vmmgr_priv*,int,int,int) ;
 int nv_rd32 (struct nv04_vmmgr_priv*,int) ;
 int nv_wr32 (struct nv04_vmmgr_priv*,int,int) ;

__attribute__((used)) static int
nv44_vmmgr_init(struct nouveau_object *object)
{
 struct nv04_vmmgr_priv *priv = (void *)object;
 struct nouveau_gpuobj *gart = priv->vm->pgt[0].obj[0];
 u32 addr;
 int ret;

 ret = nouveau_vmmgr_init(&priv->base);
 if (ret)
  return ret;





 addr = nv_rd32(priv, 0x10020c);
 addr -= ((gart->addr >> 19) + 1) << 19;

 nv_wr32(priv, 0x100850, 0x80000000);
 nv_wr32(priv, 0x100818, priv->null);
 nv_wr32(priv, 0x100804, NV44_GART_SIZE);
 nv_wr32(priv, 0x100850, 0x00008000);
 nv_mask(priv, 0x10008c, 0x00000200, 0x00000200);
 nv_wr32(priv, 0x100820, 0x00000000);
 nv_wr32(priv, 0x10082c, 0x00000001);
 nv_wr32(priv, 0x100800, addr | 0x00000010);
 return 0;
}
