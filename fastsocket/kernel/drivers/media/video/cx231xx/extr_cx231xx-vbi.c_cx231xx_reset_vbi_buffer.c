
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx231xx_dmaqueue {int current_field; int bytes_left_in_line; scalar_t__ lines_completed; scalar_t__ pos; } ;
struct cx231xx_buffer {int dummy; } ;
struct TYPE_3__ {struct cx231xx_buffer* buf; } ;
struct TYPE_4__ {TYPE_1__ bulk_ctl; } ;
struct cx231xx {int width; TYPE_2__ vbi_mode; } ;


 int get_next_vbi_buf (struct cx231xx_dmaqueue*,struct cx231xx_buffer**) ;

void cx231xx_reset_vbi_buffer(struct cx231xx *dev,
         struct cx231xx_dmaqueue *dma_q)
{
 struct cx231xx_buffer *buf;

 buf = dev->vbi_mode.bulk_ctl.buf;

 if (buf == ((void*)0)) {

  get_next_vbi_buf(dma_q, &buf);

  dma_q->pos = 0;
  dma_q->current_field = -1;
 }

 dma_q->bytes_left_in_line = dev->width << 1;
 dma_q->lines_completed = 0;
}
