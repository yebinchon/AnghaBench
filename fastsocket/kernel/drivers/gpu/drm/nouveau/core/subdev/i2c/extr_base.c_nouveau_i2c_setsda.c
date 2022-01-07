
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_i2c_port {TYPE_1__* func; } ;
struct TYPE_2__ {int (* drive_sda ) (struct nouveau_i2c_port*,int) ;} ;


 int stub1 (struct nouveau_i2c_port*,int) ;

__attribute__((used)) static void
nouveau_i2c_setsda(void *data, int state)
{
 struct nouveau_i2c_port *port = data;
 port->func->drive_sda(port, state);
}
