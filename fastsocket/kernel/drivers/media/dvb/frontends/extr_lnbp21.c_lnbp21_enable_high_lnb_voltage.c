
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lnbp21 {int i2c; int override_and; int config; int override_or; int i2c_addr; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;


 int EIO ;
 int LNBP21_LLC ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int lnbp21_enable_high_lnb_voltage(struct dvb_frontend *fe, long arg)
{
 struct lnbp21 *lnbp21 = (struct lnbp21 *) fe->sec_priv;
 struct i2c_msg msg = { .addr = lnbp21->i2c_addr, .flags = 0,
    .buf = &lnbp21->config,
    .len = sizeof(lnbp21->config) };

 if (arg)
  lnbp21->config |= LNBP21_LLC;
 else
  lnbp21->config &= ~LNBP21_LLC;

 lnbp21->config |= lnbp21->override_or;
 lnbp21->config &= lnbp21->override_and;

 return (i2c_transfer(lnbp21->i2c, &msg, 1) == 1) ? 0 : -EIO;
}
