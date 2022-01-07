
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct urb {int status; int number_of_packets; unsigned char* transfer_buffer; TYPE_3__* iso_frame_desc; struct cx231xx_dmaqueue* context; } ;
struct cx231xx_dmaqueue {int last_sav; int partial_buf; scalar_t__ is_partial_line; } ;
struct cx231xx_buffer {int vb; } ;
struct TYPE_4__ {struct cx231xx_buffer* buf; } ;
struct TYPE_5__ {scalar_t__ max_pkt_size; TYPE_1__ isoc_ctl; } ;
struct cx231xx {int state; TYPE_2__ video_mode; } ;
struct TYPE_6__ {int status; scalar_t__ actual_length; int offset; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int ENOENT ;
 int EPROTO ;
 int cx231xx_find_boundary_SAV_EAV (unsigned char*,int ,int*) ;
 int cx231xx_find_next_SAV_EAV (unsigned char*,int,int*) ;
 int cx231xx_get_video_line (struct cx231xx*,struct cx231xx_dmaqueue*,int,unsigned char*,int) ;
 int cx231xx_isocdbg (char*) ;
 int memcpy (int ,unsigned char*,int) ;
 int print_err_status (struct cx231xx*,int,int) ;
 unsigned char* videobuf_to_vmalloc (int *) ;

__attribute__((used)) static inline int cx231xx_isoc_copy(struct cx231xx *dev, struct urb *urb)
{
 struct cx231xx_buffer *buf;
 struct cx231xx_dmaqueue *dma_q = urb->context;
 unsigned char *outp = ((void*)0);
 int i, rc = 1;
 unsigned char *p_buffer;
 u32 bytes_parsed = 0, buffer_size = 0;
 u8 sav_eav = 0;

 if (!dev)
  return 0;

 if ((dev->state & DEV_DISCONNECTED) || (dev->state & DEV_MISCONFIGURED))
  return 0;

 if (urb->status < 0) {
  print_err_status(dev, -1, urb->status);
  if (urb->status == -ENOENT)
   return 0;
 }

 buf = dev->video_mode.isoc_ctl.buf;
 if (buf != ((void*)0))
  outp = videobuf_to_vmalloc(&buf->vb);

 for (i = 0; i < urb->number_of_packets; i++) {
  int status = urb->iso_frame_desc[i].status;

  if (status < 0) {
   print_err_status(dev, i, status);
   if (urb->iso_frame_desc[i].status != -EPROTO)
    continue;
  }

  if (urb->iso_frame_desc[i].actual_length <= 0) {

   continue;
  }
  if (urb->iso_frame_desc[i].actual_length >
      dev->video_mode.max_pkt_size) {
   cx231xx_isocdbg("packet bigger than packet size");
   continue;
  }


  p_buffer = urb->transfer_buffer + urb->iso_frame_desc[i].offset;
  buffer_size = urb->iso_frame_desc[i].actual_length;
  bytes_parsed = 0;

  if (dma_q->is_partial_line) {

   sav_eav = dma_q->last_sav;
  } else {


   sav_eav =
       cx231xx_find_boundary_SAV_EAV(p_buffer,
         dma_q->partial_buf,
         &bytes_parsed);
  }

  sav_eav &= 0xF0;


  if (sav_eav) {
   bytes_parsed += cx231xx_get_video_line(dev, dma_q,
    sav_eav,
    p_buffer + bytes_parsed,
    buffer_size - bytes_parsed);
  }




  while (bytes_parsed < buffer_size) {
   u32 bytes_used = 0;

   sav_eav = cx231xx_find_next_SAV_EAV(
    p_buffer + bytes_parsed,
    buffer_size - bytes_parsed,
    &bytes_used);

   bytes_parsed += bytes_used;

   sav_eav &= 0xF0;
   if (sav_eav && (bytes_parsed < buffer_size)) {
    bytes_parsed += cx231xx_get_video_line(dev,
     dma_q, sav_eav,
     p_buffer + bytes_parsed,
     buffer_size - bytes_parsed);
   }
  }



  memcpy(dma_q->partial_buf, p_buffer + buffer_size - 4, 4);
  bytes_parsed = 0;

 }
 return rc;
}
