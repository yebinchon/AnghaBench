
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct crypto4xx_device {int gdr; int gdr_pa; TYPE_1__* core_dev; } ;
struct ce_gd {int dummy; } ;
struct TYPE_2__ {int device; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PPC4XX_NUM_GD ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static u32 crypto4xx_build_gdr(struct crypto4xx_device *dev)
{
 dev->gdr = dma_alloc_coherent(dev->core_dev->device,
          sizeof(struct ce_gd) * PPC4XX_NUM_GD,
          &dev->gdr_pa, GFP_ATOMIC);
 if (!dev->gdr)
  return -ENOMEM;

 memset(dev->gdr, 0, sizeof(struct ce_gd) * PPC4XX_NUM_GD);

 return 0;
}
