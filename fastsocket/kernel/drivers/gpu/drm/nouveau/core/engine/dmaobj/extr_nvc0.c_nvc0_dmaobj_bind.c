
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {struct nouveau_dmaobj* parent; } ;
struct nouveau_gpuobj {int dummy; } ;
struct nouveau_dmaobj {int conf0; int target; int access; int start; int limit; } ;
struct nouveau_dmaeng {int dummy; } ;


 int EINVAL ;



 int NVC0_DMA_CONF0_ENABLE ;
 int NVC0_DMA_CONF0_PRIV ;
 int NVC0_DMA_CONF0_PRIV_US ;
 int NVC0_DMA_CONF0_PRIV_VM ;
 int NVC0_DMA_CONF0_TYPE ;
 int NVC0_DMA_CONF0_TYPE_LINEAR ;
 int NVC0_DMA_CONF0_TYPE_VM ;
 int NVC0_DMA_CONF0_UNKN ;
 int NV_ENGCTX_CLASS ;
 int lower_32_bits (int ) ;
 int nouveau_gpuobj_new (struct nouveau_object*,struct nouveau_object*,int,int,int ,struct nouveau_gpuobj**) ;
 int nv_iclass (struct nouveau_object*,int ) ;
 int nv_mclass (struct nouveau_dmaobj*) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int
nvc0_dmaobj_bind(struct nouveau_dmaeng *dmaeng,
   struct nouveau_object *parent,
   struct nouveau_dmaobj *dmaobj,
   struct nouveau_gpuobj **pgpuobj)
{
 u32 flags0 = nv_mclass(dmaobj);
 u32 flags5 = 0x00000000;
 int ret;

 if (!nv_iclass(parent, NV_ENGCTX_CLASS)) {
  switch (nv_mclass(parent->parent)) {
  case 138:
  case 136:
  case 137:
   break;
  default:
   return -EINVAL;
  }
 } else
  return 0;

 if (!(dmaobj->conf0 & NVC0_DMA_CONF0_ENABLE)) {
  if (dmaobj->target == 129) {
   dmaobj->conf0 = NVC0_DMA_CONF0_PRIV_VM;
   dmaobj->conf0 |= NVC0_DMA_CONF0_TYPE_VM;
  } else {
   dmaobj->conf0 = NVC0_DMA_CONF0_PRIV_US;
   dmaobj->conf0 |= NVC0_DMA_CONF0_TYPE_LINEAR;
   dmaobj->conf0 |= 0x00020000;
  }
 }

 flags0 |= (dmaobj->conf0 & NVC0_DMA_CONF0_TYPE) << 22;
 flags0 |= (dmaobj->conf0 & NVC0_DMA_CONF0_PRIV);
 flags5 |= (dmaobj->conf0 & NVC0_DMA_CONF0_UNKN);

 switch (dmaobj->target) {
 case 129:
  flags0 |= 0x00000000;
  break;
 case 128:
  flags0 |= 0x00010000;
  break;
 case 131:
  flags0 |= 0x00020000;
  break;
 case 130:
  flags0 |= 0x00030000;
  break;
 default:
  return -EINVAL;
 }

 switch (dmaobj->access) {
 case 133:
  break;
 case 135:
  flags0 |= 0x00040000;
  break;
 case 132:
 case 134:
  flags0 |= 0x00080000;
  break;
 }

 ret = nouveau_gpuobj_new(parent, parent, 24, 32, 0, pgpuobj);
 if (ret == 0) {
  nv_wo32(*pgpuobj, 0x00, flags0);
  nv_wo32(*pgpuobj, 0x04, lower_32_bits(dmaobj->limit));
  nv_wo32(*pgpuobj, 0x08, lower_32_bits(dmaobj->start));
  nv_wo32(*pgpuobj, 0x0c, upper_32_bits(dmaobj->limit) << 24 |
     upper_32_bits(dmaobj->start));
  nv_wo32(*pgpuobj, 0x10, 0x00000000);
  nv_wo32(*pgpuobj, 0x14, flags5);
 }

 return ret;
}
