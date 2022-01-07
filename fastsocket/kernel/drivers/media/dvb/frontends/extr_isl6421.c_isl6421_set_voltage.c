
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl6421 {int config; int override_or; int override_and; int i2c; int i2c_addr; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;
typedef int fe_sec_voltage_t ;


 int EINVAL ;
 int EIO ;
 int ISL6421_EN1 ;
 int ISL6421_VSEL1 ;



 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int isl6421_set_voltage(struct dvb_frontend *fe, fe_sec_voltage_t voltage)
{
 struct isl6421 *isl6421 = (struct isl6421 *) fe->sec_priv;
 struct i2c_msg msg = { .addr = isl6421->i2c_addr, .flags = 0,
    .buf = &isl6421->config,
    .len = sizeof(isl6421->config) };

 isl6421->config &= ~(ISL6421_VSEL1 | ISL6421_EN1);

 switch(voltage) {
 case 128:
  break;
 case 130:
  isl6421->config |= ISL6421_EN1;
  break;
 case 129:
  isl6421->config |= (ISL6421_EN1 | ISL6421_VSEL1);
  break;
 default:
  return -EINVAL;
 };

 isl6421->config |= isl6421->override_or;
 isl6421->config &= isl6421->override_and;

 return (i2c_transfer(isl6421->i2c, &msg, 1) == 1) ? 0 : -EIO;
}
