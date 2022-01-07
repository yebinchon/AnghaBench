
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* slave; } ;
struct v4l2_int_device {TYPE_3__ u; } ;
struct omap24xxcam_device {int * sdev; int dev; TYPE_4__* vfd; } ;
struct TYPE_9__ {int minor; } ;
struct TYPE_7__ {TYPE_1__* master; } ;
struct TYPE_6__ {struct omap24xxcam_device* priv; } ;


 int dev_attr_streaming ;
 int device_remove_file (int ,int *) ;
 int omap24xxcam_sensor_exit (struct omap24xxcam_device*) ;
 int video_device_release (TYPE_4__*) ;
 int video_unregister_device (TYPE_4__*) ;

__attribute__((used)) static void omap24xxcam_device_unregister(struct v4l2_int_device *s)
{
 struct omap24xxcam_device *cam = s->u.slave->master->priv;

 omap24xxcam_sensor_exit(cam);

 if (cam->vfd) {
  if (cam->vfd->minor == -1) {




   video_device_release(cam->vfd);
  } else {





   video_unregister_device(cam->vfd);
  }
  cam->vfd = ((void*)0);
 }

 device_remove_file(cam->dev, &dev_attr_streaming);

 cam->sdev = ((void*)0);
}
