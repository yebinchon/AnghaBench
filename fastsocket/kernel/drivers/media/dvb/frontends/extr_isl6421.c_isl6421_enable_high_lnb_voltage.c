
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl6421 {int i2c; int override_and; int config; int override_or; int i2c_addr; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;


 int EIO ;
 int ISL6421_LLC1 ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int isl6421_enable_high_lnb_voltage(struct dvb_frontend *fe, long arg)
{
 struct isl6421 *isl6421 = (struct isl6421 *) fe->sec_priv;
 struct i2c_msg msg = { .addr = isl6421->i2c_addr, .flags = 0,
    .buf = &isl6421->config,
    .len = sizeof(isl6421->config) };

 if (arg)
  isl6421->config |= ISL6421_LLC1;
 else
  isl6421->config &= ~ISL6421_LLC1;

 isl6421->config |= isl6421->override_or;
 isl6421->config &= isl6421->override_and;

 return (i2c_transfer(isl6421->i2c, &msg, 1) == 1) ? 0 : -EIO;
}
