
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvc_streaming {int last_fid; scalar_t__ sequence; TYPE_1__* dev; } ;
struct TYPE_5__ {int tv_usec; int tv_sec; } ;
struct TYPE_6__ {scalar_t__ bytesused; TYPE_2__ timestamp; scalar_t__ sequence; } ;
struct uvc_buffer {scalar_t__ state; TYPE_3__ buf; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int __u8 ;
struct TYPE_4__ {int quirks; } ;


 scalar_t__ CLOCK_MONOTONIC ;
 int EAGAIN ;
 int EINVAL ;
 int ENODATA ;
 int NSEC_PER_USEC ;
 scalar_t__ UVC_BUF_STATE_ACTIVE ;
 scalar_t__ UVC_BUF_STATE_READY ;
 int UVC_QUIRK_STREAM_NO_FID ;
 int const UVC_STREAM_EOF ;
 int const UVC_STREAM_ERR ;
 int const UVC_STREAM_FID ;
 int UVC_TRACE_FRAME ;
 int ktime_get_real_ts (struct timespec*) ;
 int ktime_get_ts (struct timespec*) ;
 scalar_t__ uvc_clock_param ;
 int uvc_trace (int ,char*) ;

__attribute__((used)) static int uvc_video_decode_start(struct uvc_streaming *stream,
  struct uvc_buffer *buf, const __u8 *data, int len)
{
 __u8 fid;






 if (len < 2 || data[0] < 2 || data[0] > len)
  return -EINVAL;


 if (data[1] & UVC_STREAM_ERR) {
  uvc_trace(UVC_TRACE_FRAME, "Dropping payload (error bit "
     "set).\n");
  return -ENODATA;
 }

 fid = data[1] & UVC_STREAM_FID;




 if (stream->last_fid != fid)
  stream->sequence++;




 if (buf == ((void*)0)) {
  stream->last_fid = fid;
  return -ENODATA;
 }
 if (buf->state != UVC_BUF_STATE_ACTIVE) {
  struct timespec ts;

  if (fid == stream->last_fid) {
   uvc_trace(UVC_TRACE_FRAME, "Dropping payload (out of "
    "sync).\n");
   if ((stream->dev->quirks & UVC_QUIRK_STREAM_NO_FID) &&
       (data[1] & UVC_STREAM_EOF))
    stream->last_fid ^= UVC_STREAM_FID;
   return -ENODATA;
  }

  if (uvc_clock_param == CLOCK_MONOTONIC)
   ktime_get_ts(&ts);
  else
   ktime_get_real_ts(&ts);

  buf->buf.sequence = stream->sequence;
  buf->buf.timestamp.tv_sec = ts.tv_sec;
  buf->buf.timestamp.tv_usec = ts.tv_nsec / NSEC_PER_USEC;


  buf->state = UVC_BUF_STATE_ACTIVE;
 }
 if (fid != stream->last_fid && buf->buf.bytesused != 0) {
  uvc_trace(UVC_TRACE_FRAME, "Frame complete (FID bit "
    "toggled).\n");
  buf->state = UVC_BUF_STATE_READY;
  return -EAGAIN;
 }

 stream->last_fid = fid;

 return data[0];
}
