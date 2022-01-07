
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_i2c_port {int base; int adapter; } ;


 int i2c_del_adapter (int *) ;
 int nouveau_object_destroy (int *) ;

void
_nouveau_i2c_port_dtor(struct nouveau_object *object)
{
 struct nouveau_i2c_port *port = (void *)object;
 i2c_del_adapter(&port->adapter);
 nouveau_object_destroy(&port->base);
}
