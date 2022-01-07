
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adap; } ;
struct tda8290_priv {int ver; TYPE_1__ i2c_props; int tda827x_addr; } ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int TDA8275A ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int tda8290_i2c_bridge (struct dvb_frontend*,int) ;

__attribute__((used)) static void tda8290_init_tuner(struct dvb_frontend *fe)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;
 unsigned char tda8275_init[] = { 0x00, 0x00, 0x00, 0x40, 0xdC, 0x04, 0xAf,
       0x3F, 0x2A, 0x04, 0xFF, 0x00, 0x00, 0x40 };
 unsigned char tda8275a_init[] = { 0x00, 0x00, 0x00, 0x00, 0xdC, 0x05, 0x8b,
       0x0c, 0x04, 0x20, 0xFF, 0x00, 0x00, 0x4b };
 struct i2c_msg msg = {.addr = priv->tda827x_addr, .flags=0,
         .buf=tda8275_init, .len = 14};
 if (priv->ver & TDA8275A)
  msg.buf = tda8275a_init;

 tda8290_i2c_bridge(fe, 1);
 i2c_transfer(priv->i2c_props.adap, &msg, 1);
 tda8290_i2c_bridge(fe, 0);
}
