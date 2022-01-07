
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cx231xx_dmaqueue {int bytes_left_in_line; int current_field; int lines_completed; } ;
struct TYPE_8__ {int size; } ;
struct cx231xx_buffer {TYPE_4__ vb; } ;
struct TYPE_6__ {struct cx231xx_buffer* buf; } ;
struct TYPE_5__ {struct cx231xx_buffer* buf; } ;
struct TYPE_7__ {TYPE_2__ bulk_ctl; TYPE_1__ isoc_ctl; } ;
struct cx231xx {int width; TYPE_3__ video_mode; scalar_t__ USE_ISO; } ;


 int cx231xx_swab (int *,int *,int ) ;
 int * videobuf_to_vmalloc (TYPE_4__*) ;

int cx231xx_do_copy(struct cx231xx *dev, struct cx231xx_dmaqueue *dma_q,
      u8 *p_buffer, u32 bytes_to_copy)
{
 u8 *p_out_buffer = ((void*)0);
 u32 current_line_bytes_copied = 0;
 struct cx231xx_buffer *buf;
 u32 _line_size = dev->width << 1;
 void *startwrite;
 int offset, lencopy;

 if (dev->USE_ISO)
  buf = dev->video_mode.isoc_ctl.buf;
 else
  buf = dev->video_mode.bulk_ctl.buf;

 if (buf == ((void*)0))
  return -1;

 p_out_buffer = videobuf_to_vmalloc(&buf->vb);

 current_line_bytes_copied = _line_size - dma_q->bytes_left_in_line;


 offset = (dma_q->current_field == 1) ? 0 : _line_size;


 startwrite = p_out_buffer + offset;


 startwrite += (dma_q->lines_completed * _line_size * 2);


 startwrite += current_line_bytes_copied;

 lencopy = dma_q->bytes_left_in_line > bytes_to_copy ?
    bytes_to_copy : dma_q->bytes_left_in_line;

 if ((u8 *)(startwrite + lencopy) > (u8 *)(p_out_buffer + buf->vb.size))
  return 0;


 cx231xx_swab((u16 *) p_buffer, (u16 *) startwrite, (u16) lencopy);

 return 0;
}
