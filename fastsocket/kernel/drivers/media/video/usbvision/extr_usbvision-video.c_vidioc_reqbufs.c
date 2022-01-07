
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ memory; int count; } ;
struct usb_usbvision {scalar_t__ streaming; int * cur_frame; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int RESTRICT_TO_RANGE (int ,int,int ) ;
 int USBVISION_NUMFRAMES ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 scalar_t__ stream_on ;
 int usbvision_empty_framequeues (struct usb_usbvision*) ;
 int usbvision_frames_alloc (struct usb_usbvision*,int ) ;
 int usbvision_frames_free (struct usb_usbvision*) ;
 int usbvision_stream_interrupt (struct usb_usbvision*) ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file,
      void *priv, struct v4l2_requestbuffers *vr)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 int ret;

 RESTRICT_TO_RANGE(vr->count, 1, USBVISION_NUMFRAMES);



 if (vr->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;

 if (usbvision->streaming == stream_on) {
  ret = usbvision_stream_interrupt(usbvision);
  if (ret)
   return ret;
 }

 usbvision_frames_free(usbvision);
 usbvision_empty_framequeues(usbvision);
 vr->count = usbvision_frames_alloc(usbvision, vr->count);

 usbvision->cur_frame = ((void*)0);

 return 0;
}
