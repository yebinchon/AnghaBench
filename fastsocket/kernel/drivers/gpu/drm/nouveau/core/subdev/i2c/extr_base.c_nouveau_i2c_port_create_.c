
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int refcount; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {struct i2c_algorithm const* algo; struct nouveau_i2c_port* algo_data; TYPE_1__ dev; int owner; int name; } ;
struct nouveau_i2c_port {int index; int udelay; int head; TYPE_3__ adapter; int getscl; int getsda; int setscl; int setsda; int pre_xfer; struct nouveau_i2c_port* data; int timeout; } ;
struct nouveau_i2c {int ports; } ;
struct nouveau_device {char* name; int cfgopt; TYPE_2__* pdev; } ;
struct i2c_algorithm {int dummy; } ;
struct i2c_algo_bit_data {int index; int udelay; int head; TYPE_3__ adapter; int getscl; int getsda; int setscl; int setsda; int pre_xfer; struct i2c_algo_bit_data* data; int timeout; } ;
struct TYPE_7__ {int dev; } ;


 int CSTMSEL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int atomic_dec (int *) ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_bit_add_bus (TYPE_3__*) ;
 int i2c_set_adapdata (TYPE_3__*,struct nouveau_i2c*) ;
 struct nouveau_i2c_port* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int nouveau_boolopt (int ,char*,int ) ;
 struct i2c_algorithm const nouveau_i2c_bit_algo ;
 int nouveau_i2c_getscl ;
 int nouveau_i2c_getsda ;
 int nouveau_i2c_pre_xfer ;
 int nouveau_i2c_setscl ;
 int nouveau_i2c_setsda ;
 int nouveau_object_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int,void**) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int snprintf (int ,int,char*,char*,int) ;
 int usecs_to_jiffies (int) ;

int
nouveau_i2c_port_create_(struct nouveau_object *parent,
    struct nouveau_object *engine,
    struct nouveau_oclass *oclass, u8 index,
    const struct i2c_algorithm *algo,
    int size, void **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct nouveau_i2c *i2c = (void *)engine;
 struct nouveau_i2c_port *port;
 int ret;

 ret = nouveau_object_create_(parent, engine, oclass, 0, size, pobject);
 port = *pobject;
 if (ret)
  return ret;

 snprintf(port->adapter.name, sizeof(port->adapter.name),
   "nouveau-%s-%d", device->name, index);
 port->adapter.owner = THIS_MODULE;
 port->adapter.dev.parent = &device->pdev->dev;
 port->index = index;
 i2c_set_adapdata(&port->adapter, i2c);

 if ( algo == &nouveau_i2c_bit_algo &&
     !nouveau_boolopt(device->cfgopt, "NvI2C", CSTMSEL)) {
  struct i2c_algo_bit_data *bit;

  bit = kzalloc(sizeof(*bit), GFP_KERNEL);
  if (!bit)
   return -ENOMEM;

  bit->udelay = 10;
  bit->timeout = usecs_to_jiffies(2200);
  bit->data = port;
  bit->pre_xfer = nouveau_i2c_pre_xfer;
  bit->setsda = nouveau_i2c_setsda;
  bit->setscl = nouveau_i2c_setscl;
  bit->getsda = nouveau_i2c_getsda;
  bit->getscl = nouveau_i2c_getscl;

  port->adapter.algo_data = bit;
  ret = i2c_bit_add_bus(&port->adapter);
 } else {
  port->adapter.algo_data = port;
  port->adapter.algo = algo;
  ret = i2c_add_adapter(&port->adapter);
 }


 if (ret == 0) {
  list_add_tail(&port->head, &i2c->ports);
  atomic_dec(&parent->refcount);
  atomic_dec(&engine->refcount);
 }

 return ret;
}
