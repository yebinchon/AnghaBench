
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int FRIIO_CTL_CLK ;
 int FRIIO_CTL_LED ;
 int FRIIO_CTL_LNB ;
 int FRIIO_CTL_STROBE ;
 int gl861_i2c_xfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int friio_ext_ctl(struct dvb_usb_adapter *adap,
    u32 sat_color, int lnb_on)
{
 int i;
 int ret;
 struct i2c_msg msg;
 u8 buf[2];
 u32 mask;
 u8 lnb = (lnb_on) ? FRIIO_CTL_LNB : 0;

 msg.addr = 0x00;
 msg.flags = 0;
 msg.len = 2;
 msg.buf = buf;

 buf[0] = 0x00;


 buf[1] = lnb | FRIIO_CTL_LED | FRIIO_CTL_STROBE;
 ret = gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);
 buf[1] |= FRIIO_CTL_CLK;
 ret += gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);

 buf[1] = lnb | FRIIO_CTL_STROBE;
 ret += gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);
 buf[1] |= FRIIO_CTL_CLK;
 ret += gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);


 mask = 1 << 31;
 for (i = 0; i < 32; i++) {
  buf[1] = lnb | FRIIO_CTL_STROBE;
  if (sat_color & mask)
   buf[1] |= FRIIO_CTL_LED;
  ret += gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);
  buf[1] |= FRIIO_CTL_CLK;
  ret += gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);
  mask >>= 1;
 }


 buf[1] = lnb;
 ret += gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);
 buf[1] |= FRIIO_CTL_CLK;
 ret += gl861_i2c_xfer(&adap->dev->i2c_adap, &msg, 1);

 return (ret == 70);
}
