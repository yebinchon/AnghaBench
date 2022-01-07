
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * func; } ;
struct nv04_i2c_port {int sense; int drive; TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct dcb_i2c_entry {int sense; int drive; } ;


 int nouveau_i2c_bit_algo ;
 int nouveau_i2c_port_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int *,struct nv04_i2c_port**) ;
 int nv04_i2c_func ;
 struct nouveau_object* nv_object (struct nv04_i2c_port*) ;

__attribute__((used)) static int
nv04_i2c_port_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
     struct nouveau_oclass *oclass, void *data, u32 index,
     struct nouveau_object **pobject)
{
 struct dcb_i2c_entry *info = data;
 struct nv04_i2c_port *port;
 int ret;

 ret = nouveau_i2c_port_create(parent, engine, oclass, index,
         &nouveau_i2c_bit_algo, &port);
 *pobject = nv_object(port);
 if (ret)
  return ret;

 port->base.func = &nv04_i2c_func;
 port->drive = info->drive;
 port->sense = info->sense;
 return 0;
}
