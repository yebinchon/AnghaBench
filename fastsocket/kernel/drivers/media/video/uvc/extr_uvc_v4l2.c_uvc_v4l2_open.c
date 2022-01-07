
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {int chain; TYPE_1__* dev; } ;
struct uvc_fh {int state; struct uvc_streaming* stream; int chain; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {int state; int users; int intf; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UVC_DEV_DISCONNECTED ;
 int UVC_HANDLE_PASSIVE ;
 int UVC_TRACE_CALLS ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int kfree (struct uvc_fh*) ;
 struct uvc_fh* kzalloc (int,int ) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int uvc_status_start (TYPE_1__*) ;
 int uvc_trace (int ,char*) ;
 struct uvc_streaming* video_drvdata (struct file*) ;

__attribute__((used)) static int uvc_v4l2_open(struct file *file)
{
 struct uvc_streaming *stream;
 struct uvc_fh *handle;
 int ret = 0;

 uvc_trace(UVC_TRACE_CALLS, "uvc_v4l2_open\n");
 stream = video_drvdata(file);

 if (stream->dev->state & UVC_DEV_DISCONNECTED)
  return -ENODEV;

 ret = usb_autopm_get_interface(stream->dev->intf);
 if (ret < 0)
  return ret;


 handle = kzalloc(sizeof *handle, GFP_KERNEL);
 if (handle == ((void*)0)) {
  usb_autopm_put_interface(stream->dev->intf);
  return -ENOMEM;
 }

 if (atomic_inc_return(&stream->dev->users) == 1) {
  ret = uvc_status_start(stream->dev);
  if (ret < 0) {
   usb_autopm_put_interface(stream->dev->intf);
   atomic_dec(&stream->dev->users);
   kfree(handle);
   return ret;
  }
 }

 handle->chain = stream->chain;
 handle->stream = stream;
 handle->state = UVC_HANDLE_PASSIVE;
 file->private_data = handle;

 return 0;
}
