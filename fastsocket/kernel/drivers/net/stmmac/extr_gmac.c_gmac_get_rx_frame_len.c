
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_length; } ;
struct TYPE_4__ {TYPE_1__ erx; } ;
struct dma_desc {TYPE_2__ des01; } ;



__attribute__((used)) static int gmac_get_rx_frame_len(struct dma_desc *p)
{
 return p->des01.erx.frame_length;
}
