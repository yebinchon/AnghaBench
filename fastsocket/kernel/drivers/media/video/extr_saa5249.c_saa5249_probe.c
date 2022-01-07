
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct saa5249_device {int addr; int* is_searching; int * vdev; TYPE_2__* vdau; int lock; struct v4l2_subdev sd; TYPE_1__* adapter; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int* is_searching; int * vdev; TYPE_2__* vdau; int lock; struct v4l2_subdev sd; TYPE_1__* adapter; } ;
struct TYPE_4__ {int clrfound; int stopped; scalar_t__ expire; int laststat; int sregs; int pgbuf; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_DAUS ;
 int VFL_TYPE_VTX ;
 int VTX_VER_MAJ ;
 int VTX_VER_MIN ;
 int kfree (struct saa5249_device*) ;
 struct saa5249_device* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,char,int) ;
 int mutex_init (int *) ;
 int saa5249_ops ;
 int saa_template ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct saa5249_device*,int *) ;
 int v4l_info (struct saa5249_device*,char*,int,int ) ;
 int * video_device_alloc () ;
 int video_device_release (int *) ;
 int video_register_device (int *,int ,int) ;
 int video_set_drvdata (int *,struct saa5249_device*) ;

__attribute__((used)) static int saa5249_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int pgbuf;
 int err;
 struct saa5249_device *t;
 struct v4l2_subdev *sd;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);
 v4l_info(client, "VideoText version %d.%d\n",
   VTX_VER_MAJ, VTX_VER_MIN);
 t = kzalloc(sizeof(*t), GFP_KERNEL);
 if (t == ((void*)0))
  return -ENOMEM;
 sd = &t->sd;
 v4l2_i2c_subdev_init(sd, client, &saa5249_ops);
 mutex_init(&t->lock);


 t->vdev = video_device_alloc();
 if (t->vdev == ((void*)0)) {
  kfree(t);
  kfree(client);
  return -ENOMEM;
 }
 memcpy(t->vdev, &saa_template, sizeof(*t->vdev));

 for (pgbuf = 0; pgbuf < NUM_DAUS; pgbuf++) {
  memset(t->vdau[pgbuf].pgbuf, ' ', sizeof(t->vdau[0].pgbuf));
  memset(t->vdau[pgbuf].sregs, 0, sizeof(t->vdau[0].sregs));
  memset(t->vdau[pgbuf].laststat, 0, sizeof(t->vdau[0].laststat));
  t->vdau[pgbuf].expire = 0;
  t->vdau[pgbuf].clrfound = 1;
  t->vdau[pgbuf].stopped = 1;
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
