
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8290_priv {int i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int msleep (int) ;
 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;

__attribute__((used)) static int tda8290_i2c_bridge(struct dvb_frontend *fe, int close)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;

 unsigned char enable[2] = { 0x21, 0xC0 };
 unsigned char disable[2] = { 0x21, 0x00 };
 unsigned char *msg;

 if (close) {
  msg = enable;
  tuner_i2c_xfer_send(&priv->i2c_props, msg, 2);

  msleep(20);
 } else {
  msg = disable;
  tuner_i2c_xfer_send(&priv->i2c_props, msg, 2);
 }

 return 0;
}
