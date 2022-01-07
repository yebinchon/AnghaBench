
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_streaming_control {scalar_t__ bFormatIndex; scalar_t__ bFrameIndex; } ;
struct uvc_streaming {unsigned int nformats; scalar_t__ type; int decode; TYPE_2__* intf; TYPE_1__* dev; struct uvc_frame* cur_frame; struct uvc_format* cur_format; struct uvc_format* format; int intfnum; int queue; int active; struct uvc_streaming_control ctrl; } ;
struct uvc_frame {scalar_t__ bFrameIndex; } ;
struct uvc_format {scalar_t__ index; unsigned int nframes; struct uvc_frame* frame; } ;
struct TYPE_4__ {int num_altsetting; } ;
struct TYPE_3__ {int quirks; int udev; } ;


 int EINVAL ;
 int KERN_INFO ;
 int UVC_GET_CUR ;
 int UVC_GET_DEF ;
 int UVC_QUIRK_BUILTIN_ISIGHT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int atomic_set (int *,int ) ;
 int usb_set_interface (int ,int ,int ) ;
 int uvc_get_video_ctrl (struct uvc_streaming*,struct uvc_streaming_control*,int,int ) ;
 int uvc_no_drop_param ;
 int uvc_printk (int ,char*) ;
 int uvc_queue_init (int *,scalar_t__,int) ;
 int uvc_set_video_ctrl (struct uvc_streaming*,struct uvc_streaming_control*,int) ;
 int uvc_video_decode_bulk ;
 int uvc_video_decode_isight ;
 int uvc_video_decode_isoc ;
 int uvc_video_encode_bulk ;

int uvc_video_init(struct uvc_streaming *stream)
{
 struct uvc_streaming_control *probe = &stream->ctrl;
 struct uvc_format *format = ((void*)0);
 struct uvc_frame *frame = ((void*)0);
 unsigned int i;
 int ret;

 if (stream->nformats == 0) {
  uvc_printk(KERN_INFO, "No supported video formats found.\n");
  return -EINVAL;
 }

 atomic_set(&stream->active, 0);


 uvc_queue_init(&stream->queue, stream->type, !uvc_no_drop_param);






 usb_set_interface(stream->dev->udev, stream->intfnum, 0);






 if (uvc_get_video_ctrl(stream, probe, 1, UVC_GET_DEF) == 0)
  uvc_set_video_ctrl(stream, probe, 1);






 ret = uvc_get_video_ctrl(stream, probe, 1, UVC_GET_CUR);
 if (ret < 0)
  return ret;




 for (i = stream->nformats; i > 0; --i) {
  format = &stream->format[i-1];
  if (format->index == probe->bFormatIndex)
   break;
 }

 if (format->nframes == 0) {
  uvc_printk(KERN_INFO, "No frame descriptor found for the "
   "default format.\n");
  return -EINVAL;
 }






 for (i = format->nframes; i > 0; --i) {
  frame = &format->frame[i-1];
  if (frame->bFrameIndex == probe->bFrameIndex)
   break;
 }

 probe->bFormatIndex = format->index;
 probe->bFrameIndex = frame->bFrameIndex;

 stream->cur_format = format;
 stream->cur_frame = frame;


 if (stream->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  if (stream->dev->quirks & UVC_QUIRK_BUILTIN_ISIGHT)
   stream->decode = uvc_video_decode_isight;
  else if (stream->intf->num_altsetting > 1)
   stream->decode = uvc_video_decode_isoc;
  else
   stream->decode = uvc_video_decode_bulk;
 } else {
  if (stream->intf->num_altsetting == 1)
   stream->decode = uvc_video_encode_bulk;
  else {
   uvc_printk(KERN_INFO, "Isochronous endpoints are not "
    "supported for video output devices.\n");
   return -EINVAL;
  }
 }

 return 0;
}
