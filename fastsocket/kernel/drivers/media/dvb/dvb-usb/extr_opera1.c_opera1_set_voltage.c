
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int addr; int flags; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct dvb_frontend {TYPE_2__* dvb; } ;
typedef scalar_t__ fe_sec_voltage_t ;
struct TYPE_4__ {scalar_t__ priv; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int ADDR_B600_VOLTAGE_13V ;
 int ADDR_B601_VOLTAGE_18V ;
 scalar_t__ SEC_VOLTAGE_18 ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int opera1_set_voltage(struct dvb_frontend *fe, fe_sec_voltage_t voltage)
{
 static u8 command_13v[1]={0x00};
 static u8 command_18v[1]={0x01};
 struct i2c_msg msg[] = {
  {.addr = ADDR_B600_VOLTAGE_13V,.flags = 0,.buf = command_13v,.len = 1},
 };
 struct dvb_usb_adapter *udev_adap =
     (struct dvb_usb_adapter *)(fe->dvb->priv);
 if (voltage == SEC_VOLTAGE_18) {
  msg[0].addr = ADDR_B601_VOLTAGE_18V;
  msg[0].buf = command_18v;
 }
 i2c_transfer(&udev_adap->dev->i2c_adap, msg, 1);
 return 0;
}
