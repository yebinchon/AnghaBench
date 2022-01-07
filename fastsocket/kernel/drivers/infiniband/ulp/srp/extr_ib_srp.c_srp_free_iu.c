
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_iu {struct srp_iu* buf; int direction; int size; int dma; } ;
struct srp_host {TYPE_1__* srp_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (struct srp_iu*) ;

__attribute__((used)) static void srp_free_iu(struct srp_host *host, struct srp_iu *iu)
{
 if (!iu)
  return;

 ib_dma_unmap_single(host->srp_dev->dev, iu->dma, iu->size,
       iu->direction);
 kfree(iu->buf);
 kfree(iu);
}
