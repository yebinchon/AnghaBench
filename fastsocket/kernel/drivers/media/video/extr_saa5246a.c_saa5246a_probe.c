
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct saa5246a_device {int* is_searching; int * vdev; int * pgbuf; int lock; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAJOR_VERSION ;
 int MINOR_VERSION ;
 int NUM_DAUS ;
 int VFL_TYPE_VTX ;
 int kfree (struct saa5246a_device*) ;
 struct saa5246a_device* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,char,int) ;
 int mutex_init (int *) ;
 int saa5246a_ops ;
 int saa_template ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;
 int * video_device_alloc () ;
 int video_device_release (int *) ;
 int video_register_device (int *,int ,int) ;
 int video_set_drvdata (int *,struct saa5246a_device*) ;

__attribute__((used)) static int saa5246a_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int pgbuf;
 int err;
 struct saa5246a_device *t;
 struct v4l2_subdev *sd;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);
 v4l_info(client, "VideoText version %d.%d\n",
   MAJOR_VERSION, MINOR_VERSION);
 t = kzalloc(sizeof(*t), GFP_KERNEL);
 if (t == ((void*)0))
  return -ENOMEM;
 sd = &t->sd;
 v4l2_i2c_subdev_init(sd, client, &saa5246a_ops);
 mutex_init(&t->lock);


 t->vdev = video_device_alloc();
 if (t->vdev == ((void*)0)) {
  kfree(t);
  return -ENOMEM;
 }
 memcpy(t->vdev, &saa_template, sizeof(*t->vdev));

 for (pgbuf = 0; pgbuf < NUM_DAUS; pgbuf++) {
  memset(t->pgbuf[pgbuf], ' ', sizeof(t->pgbuf[0]));
  t->is_searching[pgbuf] = 0;
 }
 video_set_drvdata(t->vdev, t);


 err = video_register_device(t->vdev, VFL_TYPE_VTX, -1);
 if (err < 0) {
  video_device_release(t->vdev);
  kfree(t);
  return err;
 }
 return 0;
}
