
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {int last_fid; } ;
struct uvc_buffer {int dummy; } ;
typedef int __u8 ;


 int UVC_STREAM_EOF ;
 int UVC_STREAM_EOH ;
 int UVC_STREAM_FID ;

__attribute__((used)) static int uvc_video_encode_header(struct uvc_streaming *stream,
  struct uvc_buffer *buf, __u8 *data, int len)
{
 data[0] = 2;
 data[1] = UVC_STREAM_EOH | UVC_STREAM_EOF
  | (stream->last_fid & UVC_STREAM_FID);
 return 2;
}
