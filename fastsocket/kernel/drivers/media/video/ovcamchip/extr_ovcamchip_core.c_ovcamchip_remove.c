
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ovcamchip {TYPE_1__* sops; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* free ) (struct i2c_client*) ;} ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct ovcamchip*) ;
 int stub1 (struct i2c_client*) ;
 struct ovcamchip* to_ovcamchip (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int ovcamchip_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ovcamchip *ov = to_ovcamchip(sd);
 int rc;

 v4l2_device_unregister_subdev(sd);
 rc = ov->sops->free(client);
 if (rc < 0)
  return rc;

 kfree(ov);
 return 0;
}
