
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct urb {unsigned char* transfer_buffer; scalar_t__ actual_length; int status; struct cx231xx_dmaqueue* context; } ;
struct cx231xx_dmaqueue {int last_sav; int partial_buf; scalar_t__ is_partial_line; } ;
struct cx231xx_buffer {int dummy; } ;
struct TYPE_3__ {struct cx231xx_buffer* buf; } ;
struct TYPE_4__ {TYPE_1__ bulk_ctl; } ;
struct cx231xx {int state; TYPE_2__ vbi_mode; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int ENOENT ;
 int cx231xx_find_boundary_SAV_EAV (unsigned char*,int ,scalar_t__*) ;
 int cx231xx_find_next_SAV_EAV (unsigned char*,scalar_t__,scalar_t__*) ;
 scalar_t__ cx231xx_get_vbi_line (struct cx231xx*,struct cx231xx_dmaqueue*,int,unsigned char*,scalar_t__) ;
 int memcpy (int ,unsigned char*,int) ;
 int print_err_status (struct cx231xx*,int,int ) ;

__attribute__((used)) static inline int cx231xx_isoc_vbi_copy(struct cx231xx *dev, struct urb *urb)
{
 struct cx231xx_buffer *buf;
 struct cx231xx_dmaqueue *dma_q = urb->context;
 int rc = 1;
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

 buf = dev->vbi_mode.bulk_ctl.buf;


 p_buffer = urb->transfer_buffer;
 buffer_size = urb->actual_length;

 if (buffer_size > 0) {
  bytes_parsed = 0;

  if (dma_q->is_partial_line) {


   sav_eav = dma_q->last_sav;
  } else {



   sav_eav = cx231xx_find_boundary_SAV_EAV(p_buffer,
         dma_q->partial_buf,
         &bytes_parsed);
  }

  sav_eav &= 0xF0;


  if (sav_eav) {
   bytes_parsed += cx231xx_get_vbi_line(dev, dma_q,
    sav_eav,
    p_buffer + bytes_parsed,
    buffer_size - bytes_parsed);
  }


  dma_q->is_partial_line = 0;

  while (bytes_parsed < buffer_size) {
   u32 bytes_used = 0;

   sav_eav = cx231xx_find_next_SAV_EAV(
    p_buffer + bytes_parsed,
    buffer_size - bytes_parsed,
    &bytes_used);

   bytes_parsed += bytes_used;

   sav_eav &= 0xF0;
   if (sav_eav && (bytes_parsed < buffer_size)) {
    bytes_parsed += cx231xx_get_vbi_line(dev,
     dma_q, sav_eav,
     p_buffer+bytes_parsed,
     buffer_size-bytes_parsed);
   }
  }



  memcpy(dma_q->partial_buf, p_buffer + buffer_size - 4, 4);
  bytes_parsed = 0;
 }

 return rc;
}
