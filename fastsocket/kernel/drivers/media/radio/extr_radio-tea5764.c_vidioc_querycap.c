
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
struct video_device {TYPE_2__ dev; int name; } ;
struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct tea5764_device {struct video_device* videodev; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int RADIO_VERSION ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_TUNER ;
 char* dev_name (TYPE_2__*) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,int ,int) ;
 struct tea5764_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 struct tea5764_device *radio = video_drvdata(file);
 struct video_device *dev = radio->videodev;

 strlcpy(v->driver, dev->dev.driver->name, sizeof(v->driver));
 strlcpy(v->card, dev->name, sizeof(v->card));
 snprintf(v->bus_info, sizeof(v->bus_info),
   "I2C:%s", dev_name(&dev->dev));
 v->version = RADIO_VERSION;
 v->capabilities = V4L2_CAP_TUNER | V4L2_CAP_RADIO;
 return 0;
}
