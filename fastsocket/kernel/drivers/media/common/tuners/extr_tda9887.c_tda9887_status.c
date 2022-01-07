
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {int i2c_props; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;
typedef int buf ;


 int dump_read_message (struct dvb_frontend*,unsigned char*) ;
 int memset (unsigned char*,int ,int) ;
 int tuner_i2c_xfer_recv (int *,unsigned char*,int) ;
 int tuner_info (char*,int) ;

__attribute__((used)) static int tda9887_status(struct dvb_frontend *fe)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;
 unsigned char buf[1];
 int rc;

 memset(buf,0,sizeof(buf));
 if (1 != (rc = tuner_i2c_xfer_recv(&priv->i2c_props,buf,1)))
  tuner_info("i2c i/o error: rc == %d (should be 1)\n", rc);
 dump_read_message(fe, buf);
 return 0;
}
