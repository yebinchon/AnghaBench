
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ovcamchip {size_t subtype; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PDEBUG (int,char*,...) ;
 int * chip_names ;
 int kfree (struct ovcamchip*) ;
 struct ovcamchip* kzalloc (int,int ) ;
 int ovcamchip_detect (struct i2c_client*) ;
 int ovcamchip_ops ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int ,int,int ) ;

__attribute__((used)) static int ovcamchip_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ovcamchip *ov;
 struct v4l2_subdev *sd;
 int rc = 0;

 ov = kzalloc(sizeof *ov, GFP_KERNEL);
 if (!ov) {
  rc = -ENOMEM;
  goto no_ov;
 }
 sd = &ov->sd;
 v4l2_i2c_subdev_init(sd, client, &ovcamchip_ops);

 rc = ovcamchip_detect(client);
 if (rc < 0)
  goto error;

 v4l_info(client, "%s found @ 0x%02x (%s)\n",
   chip_names[ov->subtype], client->addr << 1, client->adapter->name);

 PDEBUG(1, "Camera chip detection complete");

 return rc;
error:
 kfree(ov);
no_ov:
 PDEBUG(1, "returning %d", rc);
 return rc;
}
