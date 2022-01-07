
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8290_priv {int i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;
 int tuner_i2c_xfer_send_recv (int *,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static void tda8295_agc1_out(struct dvb_frontend *fe, int enable)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;
 unsigned char buf[] = { 0x02, 0x00 };

 tuner_i2c_xfer_send_recv(&priv->i2c_props, &buf[0], 1, &buf[1], 1);

 if (enable)
  buf[1] &= ~0x40;
 else
  buf[1] |= 0x40;

 tuner_i2c_xfer_send(&priv->i2c_props, buf, 2);
}
