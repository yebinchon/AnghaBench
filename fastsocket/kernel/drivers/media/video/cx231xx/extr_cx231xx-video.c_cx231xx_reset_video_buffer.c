
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct cx231xx_dmaqueue {int current_field; scalar_t__ lines_completed; scalar_t__ lines_per_field; int field1_done; int bytes_left_in_line; scalar_t__ pos; } ;
struct cx231xx_buffer {int vb; } ;
struct TYPE_5__ {struct cx231xx_buffer* buf; } ;
struct TYPE_4__ {struct cx231xx_buffer* buf; } ;
struct TYPE_6__ {TYPE_2__ bulk_ctl; TYPE_1__ isoc_ctl; } ;
struct cx231xx {int width; TYPE_3__ video_mode; scalar_t__ USE_ISO; } ;


 int get_next_buf (struct cx231xx_dmaqueue*,struct cx231xx_buffer**) ;
 int * videobuf_to_vmalloc (int *) ;

void cx231xx_reset_video_buffer(struct cx231xx *dev,
    struct cx231xx_dmaqueue *dma_q)
{
 struct cx231xx_buffer *buf;


 if (dma_q->current_field == 1) {
  if (dma_q->lines_completed >= dma_q->lines_per_field)
   dma_q->field1_done = 1;
  else
   dma_q->field1_done = 0;
 }

 if (dev->USE_ISO)
  buf = dev->video_mode.isoc_ctl.buf;
 else
  buf = dev->video_mode.bulk_ctl.buf;

 if (buf == ((void*)0)) {
  u8 *outp = ((void*)0);

  get_next_buf(dma_q, &buf);

  if (buf)
   outp = videobuf_to_vmalloc(&buf->vb);

  dma_q->pos = 0;
  dma_q->field1_done = 0;
  dma_q->current_field = -1;
 }


 dma_q->bytes_left_in_line = dev->width << 1;
 dma_q->lines_completed = 0;
}
