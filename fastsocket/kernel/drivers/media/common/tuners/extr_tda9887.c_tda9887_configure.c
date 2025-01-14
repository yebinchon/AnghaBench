
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {int * data; int i2c_props; scalar_t__ standby; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;


 int cForcedMuteAudioON ;
 int cOutputPort1Inactive ;
 int cOutputPort2Inactive ;
 int debug ;
 int dump_write_message (struct dvb_frontend*,int *) ;
 int memset (int *,int ,int) ;
 int msleep_interruptible (int) ;
 int tda9887_do_config (struct dvb_frontend*) ;
 int tda9887_set_insmod (struct dvb_frontend*) ;
 int tda9887_set_tvnorm (struct dvb_frontend*) ;
 int tda9887_status (struct dvb_frontend*) ;
 int tuner_dbg (char*,int ,int ,int ) ;
 int tuner_i2c_xfer_send (int *,int *,int) ;
 int tuner_info (char*,int) ;

__attribute__((used)) static void tda9887_configure(struct dvb_frontend *fe)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;
 int rc;

 memset(priv->data,0,sizeof(priv->data));
 tda9887_set_tvnorm(fe);
 priv->data[1] |= cOutputPort1Inactive;
 priv->data[1] |= cOutputPort2Inactive;

 tda9887_do_config(fe);
 tda9887_set_insmod(fe);

 if (priv->standby)
  priv->data[1] |= cForcedMuteAudioON;

 tuner_dbg("writing: b=0x%02x c=0x%02x e=0x%02x\n",
    priv->data[1], priv->data[2], priv->data[3]);
 if (debug > 1)
  dump_write_message(fe, priv->data);

 if (4 != (rc = tuner_i2c_xfer_send(&priv->i2c_props,priv->data,4)))
  tuner_info("i2c i/o error: rc == %d (should be 4)\n", rc);

 if (debug > 2) {
  msleep_interruptible(1000);
  tda9887_status(fe);
 }
}
