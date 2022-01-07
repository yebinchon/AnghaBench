
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int name; int release; int * fops; int * parent; } ;
struct uvc_streaming {struct video_device* vdev; } ;
struct uvc_device {int nstreams; int name; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int KERN_ERR ;
 int VFL_TYPE_GRABBER ;
 int atomic_inc (int *) ;
 int strlcpy (int ,int ,int) ;
 int uvc_fops ;
 int uvc_printk (int ,char*,int) ;
 int uvc_release ;
 int uvc_video_init (struct uvc_streaming*) ;
 struct video_device* video_device_alloc () ;
 int video_device_release (struct video_device*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct uvc_streaming*) ;

__attribute__((used)) static int uvc_register_video(struct uvc_device *dev,
  struct uvc_streaming *stream)
{
 struct video_device *vdev;
 int ret;




 ret = uvc_video_init(stream);
 if (ret < 0) {
  uvc_printk(KERN_ERR, "Failed to initialize the device "
   "(%d).\n", ret);
  return ret;
 }


 vdev = video_device_alloc();
 if (vdev == ((void*)0)) {
  uvc_printk(KERN_ERR, "Failed to allocate video device (%d).\n",
      ret);
  return -ENOMEM;
 }





 vdev->parent = &dev->intf->dev;
 vdev->fops = &uvc_fops;
 vdev->release = uvc_release;
 strlcpy(vdev->name, dev->name, sizeof vdev->name);




 stream->vdev = vdev;
 video_set_drvdata(vdev, stream);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  uvc_printk(KERN_ERR, "Failed to register video device (%d).\n",
      ret);
  stream->vdev = ((void*)0);
  video_device_release(vdev);
  return ret;
 }

 atomic_inc(&dev->nstreams);
 return 0;
}
