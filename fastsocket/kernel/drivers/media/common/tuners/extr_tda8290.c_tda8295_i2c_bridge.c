
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8290_priv {int i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int msleep (int) ;
 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;
 int tuner_i2c_xfer_send_recv (int *,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static int tda8295_i2c_bridge(struct dvb_frontend *fe, int close)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;

 unsigned char enable[2] = { 0x45, 0xc1 };
 unsigned char disable[2] = { 0x46, 0x00 };
 unsigned char buf[3] = { 0x45, 0x01, 0x00 };
 unsigned char *msg;

 if (close) {
  msg = enable;
  tuner_i2c_xfer_send(&priv->i2c_props, msg, 2);

  msleep(20);
 } else {
  msg = disable;
  tuner_i2c_xfer_send_recv(&priv->i2c_props, msg, 1, &msg[1], 1);

  buf[2] = msg[1];
  buf[2] &= ~0x04;
  tuner_i2c_xfer_send(&priv->i2c_props, buf, 3);
  msleep(5);

  msg[1] |= 0x04;
  tuner_i2c_xfer_send(&priv->i2c_props, msg, 2);
 }

 return 0;
}
