
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * func; } ;
struct nv50_i2c_port {int state; int addr; int ctrl; int data; TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct dcb_i2c_entry {int drive; int share; } ;


 int DCB_I2C_UNUSED ;
 int nouveau_i2c_bit_algo ;
 int nouveau_i2c_port_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int *,struct nv50_i2c_port**) ;
 struct nouveau_object* nv_object (struct nv50_i2c_port*) ;
 int nvd0_i2c_func ;

__attribute__((used)) static int
nvd0_i2c_port_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
     struct nouveau_oclass *oclass, void *data, u32 index,
     struct nouveau_object **pobject)
{
 struct dcb_i2c_entry *info = data;
 struct nv50_i2c_port *port;
 int ret;

 ret = nouveau_i2c_port_create(parent, engine, oclass, index,
         &nouveau_i2c_bit_algo, &port);
 *pobject = nv_object(port);
 if (ret)
  return ret;

 port->base.func = &nvd0_i2c_func;
 port->state = 0x00000007;
 port->addr = 0x00d014 + (info->drive * 0x20);
 if (info->share != DCB_I2C_UNUSED) {
  port->ctrl = 0x00e500 + (info->share * 0x50);
  port->data = 0x0000e001;
 }
 return 0;
}
