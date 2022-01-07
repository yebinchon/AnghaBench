
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct hdpvr_device {int v4l2_dev; TYPE_1__* video_dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; int name; } ;


 int ENOMEM ;
 int VFL_TYPE_GRABBER ;
 TYPE_1__ hdpvr_video_template ;
 int strcpy (int ,char*) ;
 int v4l2_err (int *,char*) ;
 TYPE_1__* video_device_alloc () ;
 scalar_t__ video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct hdpvr_device*) ;

int hdpvr_register_videodev(struct hdpvr_device *dev, struct device *parent,
       int devnum)
{

 dev->video_dev = video_device_alloc();
 if (!dev->video_dev) {
  v4l2_err(&dev->v4l2_dev, "video_device_alloc() failed\n");
  goto error;
 }

 *(dev->video_dev) = hdpvr_video_template;
 strcpy(dev->video_dev->name, "Hauppauge HD PVR");
 dev->video_dev->parent = parent;
 video_set_drvdata(dev->video_dev, dev);

 if (video_register_device(dev->video_dev, VFL_TYPE_GRABBER, devnum)) {
  v4l2_err(&dev->v4l2_dev, "video_device registration failed\n");
  goto error;
 }

 return 0;
error:
 return -ENOMEM;
}
