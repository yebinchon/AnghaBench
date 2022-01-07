
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int limit; int dma_bits; int pgt_bits; int spg_shift; int lpg_shift; int flush; int unmap; int map_sg; int create; } ;
struct nv04_vmmgr_priv {TYPE_3__* vm; TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int dummy; } ;
struct TYPE_6__ {TYPE_1__* pgt; } ;
struct TYPE_4__ {int* refcount; struct nouveau_gpuobj** obj; } ;


 int NV04_PDMA_PAGE ;
 int NV04_PDMA_SIZE ;
 int NVOBJ_FLAG_ZERO_ALLOC ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int,int ,struct nouveau_gpuobj**) ;
 int nouveau_vm_create (TYPE_2__*,int ,int,int ,int,TYPE_3__**) ;
 int nouveau_vmmgr_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,char*,char*,struct nv04_vmmgr_priv**) ;
 int nv04_vm_create ;
 int nv04_vm_flush ;
 int nv04_vm_map_sg ;
 int nv04_vm_unmap ;
 struct nouveau_object* nv_object (struct nv04_vmmgr_priv*) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static int
nv04_vmmgr_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nv04_vmmgr_priv *priv;
 struct nouveau_gpuobj *dma;
 int ret;

 ret = nouveau_vmmgr_create(parent, engine, oclass, "PCIGART",
       "pcigart", &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.create = nv04_vm_create;
 priv->base.limit = NV04_PDMA_SIZE;
 priv->base.dma_bits = 32;
 priv->base.pgt_bits = 32 - 12;
 priv->base.spg_shift = 12;
 priv->base.lpg_shift = 12;
 priv->base.map_sg = nv04_vm_map_sg;
 priv->base.unmap = nv04_vm_unmap;
 priv->base.flush = nv04_vm_flush;

 ret = nouveau_vm_create(&priv->base, 0, NV04_PDMA_SIZE, 0, 4096,
    &priv->vm);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0),
     (NV04_PDMA_SIZE / NV04_PDMA_PAGE) * 4 +
     8, 16, NVOBJ_FLAG_ZERO_ALLOC,
     &priv->vm->pgt[0].obj[0]);
 dma = priv->vm->pgt[0].obj[0];
 priv->vm->pgt[0].refcount[0] = 1;
 if (ret)
  return ret;

 nv_wo32(dma, 0x00000, 0x0002103d);
 nv_wo32(dma, 0x00004, NV04_PDMA_SIZE - 1);
 return 0;
}
