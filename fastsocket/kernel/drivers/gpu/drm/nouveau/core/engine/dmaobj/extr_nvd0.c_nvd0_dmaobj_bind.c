
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {int parent; } ;
struct nouveau_gpuobj {int dummy; } ;
struct nouveau_dmaobj {int conf0; int target; int start; int limit; } ;
struct nouveau_dmaeng {int dummy; } ;


 int EINVAL ;



 int NVD0_DMA_CONF0_ENABLE ;
 int NVD0_DMA_CONF0_PAGE ;
 int NVD0_DMA_CONF0_PAGE_LP ;
 int NVD0_DMA_CONF0_PAGE_SP ;
 int NVD0_DMA_CONF0_TYPE ;
 int NVD0_DMA_CONF0_TYPE_LINEAR ;
 int NVD0_DMA_CONF0_TYPE_VM ;



 int NV_ENGCTX_CLASS ;
 int NV_MEM_TARGET_VM ;

 int nouveau_gpuobj_new (struct nouveau_object*,struct nouveau_object*,int,int,int ,struct nouveau_gpuobj**) ;
 int nv_iclass (struct nouveau_object*,int ) ;
 int nv_mclass (int ) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static int
nvd0_dmaobj_bind(struct nouveau_dmaeng *dmaeng,
   struct nouveau_object *parent,
   struct nouveau_dmaobj *dmaobj,
   struct nouveau_gpuobj **pgpuobj)
{
 u32 flags0 = 0x00000000;
 int ret;

 if (!nv_iclass(parent, NV_ENGCTX_CLASS)) {
  switch (nv_mclass(parent->parent)) {
  case 134:
  case 132:
  case 133:
  case 131:
  case 129:
  case 130:
   break;
  default:
   return -EINVAL;
  }
 } else
  return 0;

 if (!(dmaobj->conf0 & NVD0_DMA_CONF0_ENABLE)) {
  if (dmaobj->target == NV_MEM_TARGET_VM) {
   dmaobj->conf0 |= NVD0_DMA_CONF0_TYPE_VM;
   dmaobj->conf0 |= NVD0_DMA_CONF0_PAGE_LP;
  } else {
   dmaobj->conf0 |= NVD0_DMA_CONF0_TYPE_LINEAR;
   dmaobj->conf0 |= NVD0_DMA_CONF0_PAGE_SP;
  }
 }

 flags0 |= (dmaobj->conf0 & NVD0_DMA_CONF0_TYPE) << 20;
 flags0 |= (dmaobj->conf0 & NVD0_DMA_CONF0_PAGE) >> 4;

 switch (dmaobj->target) {
 case 128:
  flags0 |= 0x00000009;
  break;
 default:
  return -EINVAL;
  break;
 }

 ret = nouveau_gpuobj_new(parent, parent, 24, 32, 0, pgpuobj);
 if (ret == 0) {
  nv_wo32(*pgpuobj, 0x00, flags0);
  nv_wo32(*pgpuobj, 0x04, dmaobj->start >> 8);
  nv_wo32(*pgpuobj, 0x08, dmaobj->limit >> 8);
  nv_wo32(*pgpuobj, 0x0c, 0x00000000);
  nv_wo32(*pgpuobj, 0x10, 0x00000000);
  nv_wo32(*pgpuobj, 0x14, 0x00000000);
 }

 return ret;
}
