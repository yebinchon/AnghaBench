
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int* buf; int addr; int flags; } ;
struct TYPE_2__ {int num; } ;
struct av7110 {int adac_type; TYPE_1__ dvb_adapter; int i2c_adap; } ;




 int EIO ;
 int dprintk (int,char*,int ,int,int) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

int msp_writereg(struct av7110 *av7110, u8 dev, u16 reg, u16 val)
{
 u8 msg[5] = { dev, reg >> 8, reg & 0xff, val >> 8 , val & 0xff };
 struct i2c_msg msgs = { .flags = 0, .len = 5, .buf = msg };

 switch (av7110->adac_type) {
 case 129:
  msgs.addr = 0x40;
  break;
 case 128:
  msgs.addr = 0x42;
  break;
 default:
  return 0;
 }

 if (i2c_transfer(&av7110->i2c_adap, &msgs, 1) != 1) {
  dprintk(1, "dvb-ttpci: failed @ card %d, %u = %u\n",
         av7110->dvb_adapter.num, reg, val);
  return -EIO;
 }
 return 0;
}
