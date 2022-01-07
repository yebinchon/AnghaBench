
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microtune_priv {int i2c_props; } ;
struct dvb_frontend {struct microtune_priv* tuner_priv; } ;


 int tuner_dbg (char*,unsigned char) ;
 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;

__attribute__((used)) static void mt2050_set_antenna(struct dvb_frontend *fe, unsigned char antenna)
{
 struct microtune_priv *priv = fe->tuner_priv;
 unsigned char buf[2];
 int ret;

 buf[0] = 6;
 buf[1] = antenna ? 0x11 : 0x10;
 ret=tuner_i2c_xfer_send(&priv->i2c_props,buf,2);
 tuner_dbg("mt2050: enabled antenna connector %d\n", antenna);
}
