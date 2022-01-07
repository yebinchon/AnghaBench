
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {TYPE_1__* dev; int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {int intf; int users; } ;


 int KERN_ERR ;
 int UVC_TRACE_CALLS ;
 scalar_t__ atomic_dec_return (int *) ;
 int kfree (struct uvc_fh*) ;
 int usb_autopm_put_interface (int ) ;
 int uvc_dismiss_privileges (struct uvc_fh*) ;
 scalar_t__ uvc_free_buffers (int *) ;
 scalar_t__ uvc_has_privileges (struct uvc_fh*) ;
 int uvc_printk (int ,char*) ;
 int uvc_status_stop (TYPE_1__*) ;
 int uvc_trace (int ,char*) ;
 int uvc_video_enable (struct uvc_streaming*,int ) ;

__attribute__((used)) static int uvc_v4l2_release(struct file *file)
{
 struct uvc_fh *handle = file->private_data;
 struct uvc_streaming *stream = handle->stream;

 uvc_trace(UVC_TRACE_CALLS, "uvc_v4l2_release\n");


 if (uvc_has_privileges(handle)) {
  uvc_video_enable(stream, 0);

  if (uvc_free_buffers(&stream->queue) < 0)
   uvc_printk(KERN_ERR, "uvc_v4l2_release: Unable to "
     "free buffers.\n");
 }


 uvc_dismiss_privileges(handle);
 kfree(handle);
 file->private_data = ((void*)0);

 if (atomic_dec_return(&stream->dev->users) == 0)
  uvc_status_stop(stream->dev);

 usb_autopm_put_interface(stream->dev->intf);
 return 0;
}
