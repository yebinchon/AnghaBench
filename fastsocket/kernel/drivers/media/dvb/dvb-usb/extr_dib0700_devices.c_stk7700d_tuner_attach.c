
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {size_t id; int fe; } ;


 int DIBX000_I2C_INTERFACE_TUNER ;
 int ENODEV ;
 struct i2c_adapter* dib7000p_get_i2c_master (int ,int ,int) ;
 int * dvb_attach (int ,int ,struct i2c_adapter*,int *) ;
 int mt2266_attach ;
 int * stk7700d_mt2266_config ;

__attribute__((used)) static int stk7700d_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct i2c_adapter *tun_i2c;
 tun_i2c = dib7000p_get_i2c_master(adap->fe, DIBX000_I2C_INTERFACE_TUNER, 1);
 return dvb_attach(mt2266_attach, adap->fe, tun_i2c,
  &stk7700d_mt2266_config[adap->id]) == ((void*)0) ? -ENODEV : 0;
}
