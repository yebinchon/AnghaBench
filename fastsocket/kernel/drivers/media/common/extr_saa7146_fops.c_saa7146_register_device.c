
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device_shadow {int * lock; } ;
struct video_device {int name; int tvnorms; int (* release ) (struct video_device*) ;int * ioctl_ops; int * fops; } ;
struct saa7146_dev {int name; TYPE_2__* ext_vv_data; int v4l2_lock; } ;
struct TYPE_4__ {int num_stds; TYPE_1__* stds; int ops; } ;
struct TYPE_3__ {int id; } ;


 int DEB_EE (char*) ;
 int ENOMEM ;
 int ERR (char*) ;
 int INFO (char*) ;
 int strlcpy (int ,char*,int) ;
 struct video_device* video_device_alloc () ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release (struct video_device*) ;
 struct video_device_shadow* video_device_shadow_get (struct video_device*) ;
 int video_fops ;
 int video_register_device (struct video_device*,int,int) ;
 int video_set_drvdata (struct video_device*,struct saa7146_dev*) ;

int saa7146_register_device(struct video_device **vid, struct saa7146_dev* dev,
       char *name, int type)
{
 struct video_device *vfd;
 struct video_device_shadow *shvfd;
 int err;
 int i;

 DEB_EE(("dev:%p, name:'%s', type:%d\n",dev,name,type));


 vfd = video_device_alloc();
 if (vfd == ((void*)0))
  return -ENOMEM;

 shvfd = video_device_shadow_get(vfd);
 if (shvfd == ((void*)0))
  return -ENOMEM;

 vfd->fops = &video_fops;
 vfd->ioctl_ops = &dev->ext_vv_data->ops;
 vfd->release = video_device_release;
 shvfd->lock = &dev->v4l2_lock;
 vfd->tvnorms = 0;
 for (i = 0; i < dev->ext_vv_data->num_stds; i++)
  vfd->tvnorms |= dev->ext_vv_data->stds[i].id;
 strlcpy(vfd->name, name, sizeof(vfd->name));
 video_set_drvdata(vfd, dev);

 err = video_register_device(vfd, type, -1);
 if (err < 0) {
  ERR(("cannot register v4l2 device. skipping.\n"));
  video_device_release(vfd);
  return err;
 }

 INFO(("%s: registered device %s [v4l2]\n",
  dev->name, video_device_node_name(vfd)));

 *vid = vfd;
 return 0;
}
