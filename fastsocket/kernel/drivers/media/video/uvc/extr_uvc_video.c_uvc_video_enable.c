
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {int ctrl; int queue; int intfnum; TYPE_1__* dev; } ;
struct TYPE_2__ {int udev; } ;


 int GFP_KERNEL ;
 int usb_set_interface (int ,int ,int ) ;
 int uvc_commit_video (struct uvc_streaming*,int *) ;
 int uvc_init_video (struct uvc_streaming*,int ) ;
 int uvc_queue_enable (int *,int) ;
 int uvc_uninit_video (struct uvc_streaming*,int) ;

int uvc_video_enable(struct uvc_streaming *stream, int enable)
{
 int ret;

 if (!enable) {
  uvc_uninit_video(stream, 1);
  usb_set_interface(stream->dev->udev, stream->intfnum, 0);
  uvc_queue_enable(&stream->queue, 0);
  return 0;
 }

 ret = uvc_queue_enable(&stream->queue, 1);
 if (ret < 0)
  return ret;


 ret = uvc_commit_video(stream, &stream->ctrl);
 if (ret < 0)
  return ret;

 return uvc_init_video(stream, GFP_KERNEL);
}
