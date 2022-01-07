
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct i2c_client {TYPE_2__* driver; } ;
struct drm_encoder_slave {int * bus_priv; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_3__ {struct module* owner; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 struct i2c_client* drm_i2c_encoder_get_client (struct drm_encoder*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (struct module*) ;
 struct drm_encoder_slave* to_encoder_slave (struct drm_encoder*) ;

void drm_i2c_encoder_destroy(struct drm_encoder *drm_encoder)
{
 struct drm_encoder_slave *encoder = to_encoder_slave(drm_encoder);
 struct i2c_client *client = drm_i2c_encoder_get_client(drm_encoder);
 struct module *module = client->driver->driver.owner;

 i2c_unregister_device(client);
 encoder->bus_priv = ((void*)0);

 module_put(module);
}
