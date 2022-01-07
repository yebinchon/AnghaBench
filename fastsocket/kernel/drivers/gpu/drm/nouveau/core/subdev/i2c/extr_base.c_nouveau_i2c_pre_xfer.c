
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_i2c_port {TYPE_1__* func; } ;
struct i2c_algo_bit_data {struct nouveau_i2c_port* data; } ;
struct i2c_adapter {struct i2c_algo_bit_data* algo_data; } ;
struct TYPE_2__ {int (* acquire ) (struct nouveau_i2c_port*) ;} ;


 int stub1 (struct nouveau_i2c_port*) ;

__attribute__((used)) static int
nouveau_i2c_pre_xfer(struct i2c_adapter *adap)
{
 struct i2c_algo_bit_data *bit = adap->algo_data;
 struct nouveau_i2c_port *port = bit->data;
 if (port->func->acquire)
  port->func->acquire(port);
 return 0;
}
