
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end_ring; scalar_t__ own; } ;
struct TYPE_4__ {TYPE_1__ etx; } ;
struct dma_desc {TYPE_2__ des01; } ;



__attribute__((used)) static void gmac_init_tx_desc(struct dma_desc *p, unsigned int ring_size)
{
 int i;

 for (i = 0; i < ring_size; i++) {
  p->des01.etx.own = 0;
  if (i == ring_size - 1)
   p->des01.etx.end_ring = 1;
  p++;
 }

 return;
}
