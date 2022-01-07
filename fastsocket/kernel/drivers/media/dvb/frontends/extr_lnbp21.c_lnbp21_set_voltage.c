
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lnbp21 {int config; int override_or; int override_and; int i2c; int i2c_addr; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;
typedef int fe_sec_voltage_t ;


 int EINVAL ;
 int EIO ;
 int LNBP21_EN ;
 int LNBP21_VSEL ;



 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int lnbp21_set_voltage(struct dvb_frontend *fe,
     fe_sec_voltage_t voltage)
{
 struct lnbp21 *lnbp21 = (struct lnbp21 *) fe->sec_priv;
 struct i2c_msg msg = { .addr = lnbp21->i2c_addr, .flags = 0,
    .buf = &lnbp21->config,
    .len = sizeof(lnbp21->config) };

 lnbp21->config &= ~(LNBP21_VSEL | LNBP21_EN);

 switch(voltage) {
 case 128:
  break;
 case 130:
  lnbp21->config |= LNBP21_EN;
  break;
 case 129:
  lnbp21->config |= (LNBP21_EN | LNBP21_VSEL);
  break;
 default:
  return -EINVAL;
 };

 lnbp21->config |= lnbp21->override_or;
 lnbp21->config &= lnbp21->override_and;

 return (i2c_transfer(lnbp21->i2c, &msg, 1) == 1) ? 0 : -EIO;
}
