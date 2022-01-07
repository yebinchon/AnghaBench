
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_i2c_port {TYPE_1__* func; } ;
struct TYPE_2__ {int (* sense_sda ) (struct nouveau_i2c_port*) ;} ;


 int stub1 (struct nouveau_i2c_port*) ;

__attribute__((used)) static int
nouveau_i2c_getsda(void *data)
{
 struct nouveau_i2c_port *port = data;
 return port->func->sense_sda(port);
}
