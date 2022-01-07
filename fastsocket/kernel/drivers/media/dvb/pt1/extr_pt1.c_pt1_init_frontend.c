
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt1_adapter {struct dvb_frontend* fe; int adap; int orig_init; int orig_sleep; int orig_set_voltage; } ;
struct TYPE_2__ {int init; int sleep; int set_voltage; } ;
struct dvb_frontend {TYPE_1__ ops; } ;


 int dvb_register_frontend (int *,struct dvb_frontend*) ;
 int pt1_set_voltage ;
 int pt1_sleep ;
 int pt1_wakeup ;

__attribute__((used)) static int pt1_init_frontend(struct pt1_adapter *adap, struct dvb_frontend *fe)
{
 int ret;

 adap->orig_set_voltage = fe->ops.set_voltage;
 adap->orig_sleep = fe->ops.sleep;
 adap->orig_init = fe->ops.init;
 fe->ops.set_voltage = pt1_set_voltage;
 fe->ops.sleep = pt1_sleep;
 fe->ops.init = pt1_wakeup;

 ret = dvb_register_frontend(&adap->adap, fe);
 if (ret < 0)
  return ret;

 adap->fe = fe;
 return 0;
}
