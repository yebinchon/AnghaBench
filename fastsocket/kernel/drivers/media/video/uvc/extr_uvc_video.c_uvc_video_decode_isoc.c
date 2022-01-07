
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct uvc_streaming {int queue; TYPE_3__* cur_format; } ;
struct TYPE_5__ {scalar_t__ length; scalar_t__ bytesused; } ;
struct uvc_buffer {int error; scalar_t__ state; TYPE_2__ buf; } ;
struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; int * transfer_buffer; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_4__ {scalar_t__ status; int offset; scalar_t__ actual_length; } ;


 int EAGAIN ;
 scalar_t__ UVC_BUF_STATE_READY ;
 int UVC_FMT_FLAG_COMPRESSED ;
 int UVC_TRACE_FRAME ;
 struct uvc_buffer* uvc_queue_next_buffer (int *,struct uvc_buffer*) ;
 int uvc_trace (int ,char*,scalar_t__) ;
 int uvc_video_decode_data (struct uvc_streaming*,struct uvc_buffer*,int *,scalar_t__) ;
 int uvc_video_decode_end (struct uvc_streaming*,struct uvc_buffer*,int *,scalar_t__) ;
 int uvc_video_decode_start (struct uvc_streaming*,struct uvc_buffer*,int *,scalar_t__) ;

__attribute__((used)) static void uvc_video_decode_isoc(struct urb *urb, struct uvc_streaming *stream,
 struct uvc_buffer *buf)
{
 u8 *mem;
 int ret, i;

 for (i = 0; i < urb->number_of_packets; ++i) {
  if (urb->iso_frame_desc[i].status < 0) {
   uvc_trace(UVC_TRACE_FRAME, "USB isochronous frame "
    "lost (%d).\n", urb->iso_frame_desc[i].status);

   if (buf != ((void*)0))
    buf->error = 1;
   continue;
  }


  mem = urb->transfer_buffer + urb->iso_frame_desc[i].offset;
  do {
   ret = uvc_video_decode_start(stream, buf, mem,
    urb->iso_frame_desc[i].actual_length);
   if (ret == -EAGAIN)
    buf = uvc_queue_next_buffer(&stream->queue,
           buf);
  } while (ret == -EAGAIN);

  if (ret < 0)
   continue;


  uvc_video_decode_data(stream, buf, mem + ret,
   urb->iso_frame_desc[i].actual_length - ret);


  uvc_video_decode_end(stream, buf, mem,
   urb->iso_frame_desc[i].actual_length);

  if (buf->state == UVC_BUF_STATE_READY) {
   if (buf->buf.length != buf->buf.bytesused &&
       !(stream->cur_format->flags &
         UVC_FMT_FLAG_COMPRESSED))
    buf->error = 1;

   buf = uvc_queue_next_buffer(&stream->queue, buf);
  }
 }
}
