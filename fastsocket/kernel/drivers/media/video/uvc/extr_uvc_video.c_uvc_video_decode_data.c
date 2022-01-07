
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_video_queue {void* mem; } ;
struct uvc_streaming {struct uvc_video_queue queue; } ;
struct TYPE_3__ {int offset; } ;
struct TYPE_4__ {unsigned int length; unsigned int bytesused; TYPE_1__ m; } ;
struct uvc_buffer {int state; TYPE_2__ buf; } ;
typedef int __u8 ;


 int UVC_BUF_STATE_READY ;
 int UVC_TRACE_FRAME ;
 int memcpy (void*,int const*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int uvc_trace (int ,char*) ;

__attribute__((used)) static void uvc_video_decode_data(struct uvc_streaming *stream,
  struct uvc_buffer *buf, const __u8 *data, int len)
{
 struct uvc_video_queue *queue = &stream->queue;
 unsigned int maxlen, nbytes;
 void *mem;

 if (len <= 0)
  return;


 maxlen = buf->buf.length - buf->buf.bytesused;
 mem = queue->mem + buf->buf.m.offset + buf->buf.bytesused;
 nbytes = min((unsigned int)len, maxlen);
 memcpy(mem, data, nbytes);
 buf->buf.bytesused += nbytes;


 if (len > maxlen) {
  uvc_trace(UVC_TRACE_FRAME, "Frame complete (overflow).\n");
  buf->state = UVC_BUF_STATE_READY;
 }
}
