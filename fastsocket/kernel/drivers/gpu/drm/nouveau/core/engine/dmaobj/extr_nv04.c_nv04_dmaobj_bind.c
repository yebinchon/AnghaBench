
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nv04_vmmgr_priv {TYPE_2__* vm; } ;
struct nouveau_object {struct nouveau_dmaobj* parent; } ;
struct nouveau_gpuobj {int dummy; } ;
struct nouveau_dmaobj {int start; int limit; int target; int access; } ;
struct nouveau_dmaeng {int dummy; } ;
struct TYPE_6__ {int * oclass; } ;
struct TYPE_5__ {TYPE_1__* pgt; } ;
struct TYPE_4__ {struct nouveau_gpuobj** obj; } ;


 int EINVAL ;




 int NV_ENGCTX_CLASS ;





 int NV_MEM_TARGET_VM ;

 int nouveau_gpuobj_dup (struct nouveau_object*,struct nouveau_gpuobj*,struct nouveau_gpuobj**) ;
 int nouveau_gpuobj_new (struct nouveau_object*,struct nouveau_object*,int,int,int ,struct nouveau_gpuobj**) ;
 struct nv04_vmmgr_priv* nv04_vmmgr (struct nouveau_dmaeng*) ;
 int nv04_vmmgr_oclass ;
 int nv_iclass (struct nouveau_object*,int ) ;
 int nv_mclass (struct nouveau_dmaobj*) ;
 TYPE_3__* nv_object (struct nv04_vmmgr_priv*) ;
 int nv_ro32 (struct nouveau_gpuobj*,int) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static int
nv04_dmaobj_bind(struct nouveau_dmaeng *dmaeng,
   struct nouveau_object *parent,
   struct nouveau_dmaobj *dmaobj,
   struct nouveau_gpuobj **pgpuobj)
{
 struct nv04_vmmgr_priv *vmm = nv04_vmmgr(dmaeng);
 struct nouveau_gpuobj *gpuobj;
 u32 flags0 = nv_mclass(dmaobj);
 u32 flags2 = 0x00000000;
 u64 offset = dmaobj->start & 0xfffff000;
 u64 adjust = dmaobj->start & 0x00000fff;
 u32 length = dmaobj->limit - dmaobj->start;
 int ret;

 if (!nv_iclass(parent, NV_ENGCTX_CLASS)) {
  switch (nv_mclass(parent->parent)) {
  case 137:
  case 136:
  case 135:
  case 134:
   break;
  default:
   return -EINVAL;
  }
 }

 if (dmaobj->target == NV_MEM_TARGET_VM) {
  if (nv_object(vmm)->oclass == &nv04_vmmgr_oclass) {
   struct nouveau_gpuobj *pgt = vmm->vm->pgt[0].obj[0];
   if (!dmaobj->start)
    return nouveau_gpuobj_dup(parent, pgt, pgpuobj);
   offset = nv_ro32(pgt, 8 + (offset >> 10));
   offset &= 0xfffff000;
  }

  dmaobj->target = 130;
  dmaobj->access = 132;
 }

 switch (dmaobj->target) {
 case 128:
  flags0 |= 0x00003000;
  break;
 case 130:
  flags0 |= 0x00023000;
  break;
 case 129:
  flags0 |= 0x00033000;
  break;
 default:
  return -EINVAL;
 }

 switch (dmaobj->access) {
 case 133:
  flags0 |= 0x00004000;
  break;
 case 131:
  flags0 |= 0x00008000;
 case 132:
  flags2 |= 0x00000002;
  break;
 default:
  return -EINVAL;
 }

 ret = nouveau_gpuobj_new(parent, parent, 16, 16, 0, &gpuobj);
 *pgpuobj = gpuobj;
 if (ret == 0) {
  nv_wo32(*pgpuobj, 0x00, flags0 | (adjust << 20));
  nv_wo32(*pgpuobj, 0x04, length);
  nv_wo32(*pgpuobj, 0x08, flags2 | offset);
  nv_wo32(*pgpuobj, 0x0c, flags2 | offset);
 }

 return ret;
}
