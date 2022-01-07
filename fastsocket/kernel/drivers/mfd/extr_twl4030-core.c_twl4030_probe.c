
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct twl4030_platform_data {scalar_t__ irq_base; scalar_t__ irq_end; scalar_t__ power; } ;
struct twl4030_client {int xfer_lock; struct i2c_client* client; scalar_t__ address; } ;
struct i2c_device_id {int driver_data; int name; } ;
struct TYPE_4__ {struct twl4030_platform_data* platform_data; } ;
struct i2c_client {scalar_t__ irq; TYPE_1__ dev; int name; int adapter; scalar_t__ addr; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int I2C_FUNC_I2C ;
 unsigned int TWL4030_NUM_SLAVES ;
 int add_children (struct twl4030_platform_data*,int ) ;
 int clocks_init (TYPE_1__*) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,unsigned int) ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 struct i2c_client* i2c_new_dummy (int ,scalar_t__) ;
 int inuse ;
 int mutex_init (int *) ;
 int strlcpy (int ,int ,int) ;
 struct twl4030_client* twl4030_modules ;
 int twl4030_power_init (scalar_t__) ;
 int twl4030_remove (struct i2c_client*) ;
 scalar_t__ twl_has_power () ;
 int twl_init_irq (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
twl4030_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 int status;
 unsigned i;
 struct twl4030_platform_data *pdata = client->dev.platform_data;

 if (!pdata) {
  dev_dbg(&client->dev, "no platform data?\n");
  return -EINVAL;
 }

 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C) == 0) {
  dev_dbg(&client->dev, "can't talk I2C?\n");
  return -EIO;
 }

 if (inuse) {
  dev_dbg(&client->dev, "driver is already in use\n");
  return -EBUSY;
 }

 for (i = 0; i < TWL4030_NUM_SLAVES; i++) {
  struct twl4030_client *twl = &twl4030_modules[i];

  twl->address = client->addr + i;
  if (i == 0)
   twl->client = client;
  else {
   twl->client = i2c_new_dummy(client->adapter,
     twl->address);
   if (!twl->client) {
    dev_err(&client->dev,
     "can't attach client %d\n", i);
    status = -ENOMEM;
    goto fail;
   }
   strlcpy(twl->client->name, id->name,
     sizeof(twl->client->name));
  }
  mutex_init(&twl->xfer_lock);
 }
 inuse = 1;


 clocks_init(&client->dev);


 if (twl_has_power() && pdata->power)
  twl4030_power_init(pdata->power);


 if (client->irq
   && pdata->irq_base
   && pdata->irq_end > pdata->irq_base) {
  status = twl_init_irq(client->irq, pdata->irq_base, pdata->irq_end);
  if (status < 0)
   goto fail;
 }

 status = add_children(pdata, id->driver_data);
fail:
 if (status < 0)
  twl4030_remove(client);
 return status;
}
