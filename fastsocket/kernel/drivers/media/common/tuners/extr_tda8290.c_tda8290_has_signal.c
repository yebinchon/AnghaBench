
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8290_priv {int i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int ARRAY_SIZE (unsigned char*) ;
 int tuner_i2c_xfer_send_recv (int *,unsigned char*,int ,unsigned char*,int) ;

__attribute__((used)) static int tda8290_has_signal(struct dvb_frontend *fe)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;

 unsigned char i2c_get_afc[1] = { 0x1B };
 unsigned char afc = 0;

 tuner_i2c_xfer_send_recv(&priv->i2c_props,
     i2c_get_afc, ARRAY_SIZE(i2c_get_afc), &afc, 1);
 return (afc & 0x80)? 65535:0;
}
