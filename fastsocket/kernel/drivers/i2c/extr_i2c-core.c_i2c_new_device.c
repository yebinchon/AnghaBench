
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * type; int * bus; int * parent; int archdata; int platform_data; } ;
struct i2c_client {int addr; int name; TYPE_1__ dev; struct i2c_adapter* adapter; int irq; int flags; } ;
struct i2c_board_info {int type; int irq; int addr; int flags; int * archdata; int platform_data; } ;
struct i2c_adapter {int dev; } ;


 int GFP_KERNEL ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,int ,int ,int) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ) ;
 int device_register (TYPE_1__*) ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_bus_type ;
 int i2c_check_addr (struct i2c_adapter*,int ) ;
 int i2c_client_type ;
 int kfree (struct i2c_client*) ;
 struct i2c_client* kzalloc (int,int ) ;
 int strlcpy (int ,int ,int) ;

struct i2c_client *
i2c_new_device(struct i2c_adapter *adap, struct i2c_board_info const *info)
{
 struct i2c_client *client;
 int status;

 client = kzalloc(sizeof *client, GFP_KERNEL);
 if (!client)
  return ((void*)0);

 client->adapter = adap;

 client->dev.platform_data = info->platform_data;

 if (info->archdata)
  client->dev.archdata = *info->archdata;

 client->flags = info->flags;
 client->addr = info->addr;
 client->irq = info->irq;

 strlcpy(client->name, info->type, sizeof(client->name));


 status = i2c_check_addr(adap, client->addr);
 if (status)
  goto out_err;

 client->dev.parent = &client->adapter->dev;
 client->dev.bus = &i2c_bus_type;
 client->dev.type = &i2c_client_type;

 dev_set_name(&client->dev, "%d-%04x", i2c_adapter_id(adap),
       client->addr);
 status = device_register(&client->dev);
 if (status)
  goto out_err;

 dev_dbg(&adap->dev, "client [%s] registered with bus id %s\n",
  client->name, dev_name(&client->dev));

 return client;

out_err:
 dev_err(&adap->dev, "Failed to register i2c client %s at 0x%02x "
  "(%d)\n", client->name, client->addr, status);
 kfree(client);
 return ((void*)0);
}
