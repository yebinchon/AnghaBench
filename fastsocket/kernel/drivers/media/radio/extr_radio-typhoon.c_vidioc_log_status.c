
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct typhoon {int curfreq; int curvol; int io; int mutefreq; scalar_t__ muted; struct v4l2_device v4l2_dev; } ;
struct file {int dummy; } ;


 int BANNER ;
 int v4l2_info (struct v4l2_device*,char*,...) ;
 struct typhoon* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct typhoon *dev = video_drvdata(file);
 struct v4l2_device *v4l2_dev = &dev->v4l2_dev;

 v4l2_info(v4l2_dev, BANNER);



 v4l2_info(v4l2_dev, "Load type: Driver compiled into kernel\n\n");

 v4l2_info(v4l2_dev, "frequency = %lu kHz\n", dev->curfreq >> 4);
 v4l2_info(v4l2_dev, "volume = %d\n", dev->curvol);
 v4l2_info(v4l2_dev, "mute = %s\n", dev->muted ? "on" : "off");
 v4l2_info(v4l2_dev, "io = 0x%x\n", dev->io);
 v4l2_info(v4l2_dev, "mute frequency = %lu kHz\n", dev->mutefreq >> 4);
 return 0;
}
