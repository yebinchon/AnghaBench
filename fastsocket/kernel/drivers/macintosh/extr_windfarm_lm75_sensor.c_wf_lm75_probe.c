
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ops; int name; } ;
struct wf_lm75_sensor {TYPE_2__ sens; struct i2c_client* i2c; int ds1775; scalar_t__ inited; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_3__ {int platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int i2c_set_clientdata (struct i2c_client*,struct wf_lm75_sensor*) ;
 int kfree (struct wf_lm75_sensor*) ;
 struct wf_lm75_sensor* kzalloc (int,int ) ;
 int wf_lm75_ops ;
 int wf_register_sensor (TYPE_2__*) ;

__attribute__((used)) static int wf_lm75_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct wf_lm75_sensor *lm;
 int rc;

 lm = kzalloc(sizeof(struct wf_lm75_sensor), GFP_KERNEL);
 if (lm == ((void*)0))
  return -ENODEV;

 lm->inited = 0;
 lm->ds1775 = id->driver_data;
 lm->i2c = client;
 lm->sens.name = client->dev.platform_data;
 lm->sens.ops = &wf_lm75_ops;
 i2c_set_clientdata(client, lm);

 rc = wf_register_sensor(&lm->sens);
 if (rc) {
  i2c_set_clientdata(client, ((void*)0));
  kfree(lm);
 }

 return rc;
}
