
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {struct uvc_fh* private_data; } ;
typedef int poll_table ;


 int UVC_TRACE_CALLS ;
 unsigned int uvc_queue_poll (int *,struct file*,int *) ;
 int uvc_trace (int ,char*) ;

__attribute__((used)) static unsigned int uvc_v4l2_poll(struct file *file, poll_table *wait)
{
 struct uvc_fh *handle = file->private_data;
 struct uvc_streaming *stream = handle->stream;

 uvc_trace(UVC_TRACE_CALLS, "uvc_v4l2_poll\n");

 return uvc_queue_poll(&stream->queue, file, wait);
}
