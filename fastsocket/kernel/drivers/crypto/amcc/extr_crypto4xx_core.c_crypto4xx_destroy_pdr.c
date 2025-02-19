
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa_state_record {int dummy; } ;
struct crypto4xx_device {int pdr_uinfo; int shadow_sr_pool_pa; int * shadow_sr_pool; TYPE_1__* core_dev; int shadow_sa_pool_pa; int * shadow_sa_pool; int pdr_pa; int * pdr; } ;
struct ce_pd {int dummy; } ;
struct TYPE_2__ {int device; } ;


 int PPC4XX_NUM_PD ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void crypto4xx_destroy_pdr(struct crypto4xx_device *dev)
{
 if (dev->pdr != ((void*)0))
  dma_free_coherent(dev->core_dev->device,
      sizeof(struct ce_pd) * PPC4XX_NUM_PD,
      dev->pdr, dev->pdr_pa);
 if (dev->shadow_sa_pool)
  dma_free_coherent(dev->core_dev->device, 256 * PPC4XX_NUM_PD,
      dev->shadow_sa_pool, dev->shadow_sa_pool_pa);
 if (dev->shadow_sr_pool)
  dma_free_coherent(dev->core_dev->device,
   sizeof(struct sa_state_record) * PPC4XX_NUM_PD,
   dev->shadow_sr_pool, dev->shadow_sr_pool_pa);

 kfree(dev->pdr_uinfo);
}
