
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chunk {int len; scalar_t__ bus_addr; TYPE_2__* region; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev_id; int bus_id; } ;


 int BUG_ON (int) ;
 int kfree (struct dma_chunk*) ;
 int lv1_unmap_device_dma_region (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int dma_sb_free_chunk(struct dma_chunk *c)
{
 int result = 0;

 if (c->bus_addr) {
  result = lv1_unmap_device_dma_region(c->region->dev->bus_id,
   c->region->dev->dev_id, c->bus_addr, c->len);
  BUG_ON(result);
 }

 kfree(c);
 return result;
}
