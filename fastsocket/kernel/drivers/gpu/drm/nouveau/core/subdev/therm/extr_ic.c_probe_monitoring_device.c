
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvbios_therm_sensor {int offset_constant; } ;
struct nouveau_therm_priv {struct i2c_client* ic; struct nvbios_therm_sensor bios_sensor; } ;
struct nouveau_i2c_port {int adapter; } ;
struct i2c_client {TYPE_1__* driver; } ;
struct i2c_board_info {int addr; int type; } ;
struct TYPE_2__ {scalar_t__ (* detect ) (struct i2c_client*,int,struct i2c_board_info*) ;} ;


 int I2C_MODULE_PREFIX ;
 struct i2c_client* i2c_new_device (int *,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 scalar_t__ nouveau_therm (struct nouveau_i2c_port*) ;
 int nv_info (struct nouveau_therm_priv*,char*,int ,int ,int ) ;
 int request_module (char*,int ,int ) ;
 scalar_t__ stub1 (struct i2c_client*,int,struct i2c_board_info*) ;

__attribute__((used)) static bool
probe_monitoring_device(struct nouveau_i2c_port *i2c,
   struct i2c_board_info *info)
{
 struct nouveau_therm_priv *priv = (void *)nouveau_therm(i2c);
 struct nvbios_therm_sensor *sensor = &priv->bios_sensor;
 struct i2c_client *client;

 request_module("%s%s", I2C_MODULE_PREFIX, info->type);

 client = i2c_new_device(&i2c->adapter, info);
 if (!client)
  return 0;

 if (!client->driver || client->driver->detect(client, -1, info)) {
  i2c_unregister_device(client);
  return 0;
 }

 nv_info(priv,
  "Found an %s at address 0x%x (controlled by lm_sensors, "
  "temp offset %+i C)\n",
  info->type, info->addr, sensor->offset_constant);
 priv->ic = client;

 return 1;
}
