
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sa_state_record {int dummy; } ;
struct pd_uinfo {scalar_t__ sr_pa; void* sr_va; scalar_t__ sa_pa; void* sa_va; } ;
struct crypto4xx_device {scalar_t__ shadow_sr_pool_pa; void* shadow_sr_pool; scalar_t__ shadow_sa_pool_pa; void* shadow_sa_pool; scalar_t__ pdr_uinfo; TYPE_1__* core_dev; void* pdr; scalar_t__ pdr_pa; } ;
struct ce_pd {int dummy; } ;
struct TYPE_2__ {int device; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int PPC4XX_NUM_PD ;
 void* dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int dma_free_coherent (int ,int,void*,scalar_t__) ;
 scalar_t__ kzalloc (int,int ) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static u32 crypto4xx_build_pdr(struct crypto4xx_device *dev)
{
 int i;
 struct pd_uinfo *pd_uinfo;
 dev->pdr = dma_alloc_coherent(dev->core_dev->device,
          sizeof(struct ce_pd) * PPC4XX_NUM_PD,
          &dev->pdr_pa, GFP_ATOMIC);
 if (!dev->pdr)
  return -ENOMEM;

 dev->pdr_uinfo = kzalloc(sizeof(struct pd_uinfo) * PPC4XX_NUM_PD,
    GFP_KERNEL);
 if (!dev->pdr_uinfo) {
  dma_free_coherent(dev->core_dev->device,
      sizeof(struct ce_pd) * PPC4XX_NUM_PD,
      dev->pdr,
      dev->pdr_pa);
  return -ENOMEM;
 }
 memset(dev->pdr, 0, sizeof(struct ce_pd) * PPC4XX_NUM_PD);
 dev->shadow_sa_pool = dma_alloc_coherent(dev->core_dev->device,
       256 * PPC4XX_NUM_PD,
       &dev->shadow_sa_pool_pa,
       GFP_ATOMIC);
 if (!dev->shadow_sa_pool)
  return -ENOMEM;

 dev->shadow_sr_pool = dma_alloc_coherent(dev->core_dev->device,
    sizeof(struct sa_state_record) * PPC4XX_NUM_PD,
    &dev->shadow_sr_pool_pa, GFP_ATOMIC);
 if (!dev->shadow_sr_pool)
  return -ENOMEM;
 for (i = 0; i < PPC4XX_NUM_PD; i++) {
  pd_uinfo = (struct pd_uinfo *) (dev->pdr_uinfo +
      sizeof(struct pd_uinfo) * i);


  pd_uinfo->sa_va = dev->shadow_sa_pool + 256 * i;
  pd_uinfo->sa_pa = dev->shadow_sa_pool_pa + 256 * i;


  pd_uinfo->sr_va = dev->shadow_sr_pool +
      sizeof(struct sa_state_record) * i;
  pd_uinfo->sr_pa = dev->shadow_sr_pool_pa +
      sizeof(struct sa_state_record) * i;
 }

 return 0;
}
