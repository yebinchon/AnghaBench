
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {TYPE_2__* fe; } ;
struct TYPE_6__ {int callback; } ;
struct TYPE_5__ {struct i2c_adapter* i2c_adap; } ;


 int DIBX000_I2C_INTERFACE_TUNER ;
 int ENODEV ;
 struct i2c_adapter* dib7000p_get_i2c_master (TYPE_2__*,int ,int) ;
 int * dvb_attach (int ,TYPE_2__*,TYPE_1__*) ;
 int stk7700ph_xc3028_callback ;
 TYPE_1__ stk7700ph_xc3028_config ;
 int xc2028_attach ;

__attribute__((used)) static int stk7700ph_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct i2c_adapter *tun_i2c;

 tun_i2c = dib7000p_get_i2c_master(adap->fe,
  DIBX000_I2C_INTERFACE_TUNER, 1);

 stk7700ph_xc3028_config.i2c_adap = tun_i2c;


 adap->fe->callback = stk7700ph_xc3028_callback;

 return dvb_attach(xc2028_attach, adap->fe, &stk7700ph_xc3028_config)
  == ((void*)0) ? -ENODEV : 0;
}
