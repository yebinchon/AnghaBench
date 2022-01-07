
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nouveau_i2c_port {TYPE_1__* func; } ;
struct TYPE_2__ {int (* aux ) (struct nouveau_i2c_port*,int,int ,int *,int ) ;int (* acquire ) (struct nouveau_i2c_port*) ;} ;


 int ENODEV ;
 int stub1 (struct nouveau_i2c_port*) ;
 int stub2 (struct nouveau_i2c_port*,int,int ,int *,int ) ;

int
nv_wraux(struct nouveau_i2c_port *port, u32 addr, u8 *data, u8 size)
{
 if (port->func->aux) {
  if (port->func->acquire)
   port->func->acquire(port);
  return port->func->aux(port, 8, addr, data, size);
 }
 return -ENODEV;
}
