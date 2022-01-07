
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8290_priv {int tda8290_easy_mode; int i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int msleep (int) ;
 int tda8295_set_easy_mode (struct dvb_frontend*,int) ;
 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;

__attribute__((used)) static void tda8295_set_video_std(struct dvb_frontend *fe)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;
 unsigned char buf[] = { 0x00, priv->tda8290_easy_mode };

 tuner_i2c_xfer_send(&priv->i2c_props, buf, 2);

 tda8295_set_easy_mode(fe, 1);
 msleep(20);
 tda8295_set_easy_mode(fe, 0);
}
