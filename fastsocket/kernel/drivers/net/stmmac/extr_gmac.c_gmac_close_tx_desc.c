
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_segment; int interrupt; } ;
struct TYPE_4__ {TYPE_1__ etx; } ;
struct dma_desc {TYPE_2__ des01; } ;



__attribute__((used)) static void gmac_close_tx_desc(struct dma_desc *p)
{
 p->des01.etx.last_segment = 1;
 p->des01.etx.interrupt = 1;
}
