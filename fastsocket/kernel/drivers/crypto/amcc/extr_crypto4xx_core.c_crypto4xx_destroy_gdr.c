
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto4xx_device {int gdr_pa; int gdr; TYPE_1__* core_dev; } ;
struct ce_gd {int dummy; } ;
struct TYPE_2__ {int device; } ;


 int PPC4XX_NUM_GD ;
 int dma_free_coherent (int ,int,int ,int ) ;

__attribute__((used)) static inline void crypto4xx_destroy_gdr(struct crypto4xx_device *dev)
{
 dma_free_coherent(dev->core_dev->device,
     sizeof(struct ce_gd) * PPC4XX_NUM_GD,
     dev->gdr, dev->gdr_pa);
}
