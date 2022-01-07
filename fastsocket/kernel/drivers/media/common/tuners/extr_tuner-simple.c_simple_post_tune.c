
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tuner_simple_priv {int type; int i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int TUNER_CHARGE_PUMP ;



 int TUNER_PLL_LOCKED ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int simple_set_aux_byte (struct dvb_frontend*,int,int) ;
 int time_after (unsigned long,unsigned long) ;
 int tuner_dbg (char*,int,int,int,int) ;
 int tuner_i2c_xfer_recv (int *,int*,int) ;
 int tuner_i2c_xfer_send (int *,int*,int) ;
 int tuner_warn (char*,int) ;
 int udelay (int) ;

__attribute__((used)) static int simple_post_tune(struct dvb_frontend *fe, u8 *buffer,
       u16 div, u8 config, u8 cb)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 int rc;

 switch (priv->type) {
 case 130:
  simple_set_aux_byte(fe, config, 0x20);
  break;
 case 128:
  simple_set_aux_byte(fe, config, 0x60);
  break;
 case 129:
 {

  unsigned long timeout = jiffies + msecs_to_jiffies(1);
  u8 status_byte = 0;


  for (;;) {
   if (time_after(jiffies, timeout))
    return 0;
   rc = tuner_i2c_xfer_recv(&priv->i2c_props,
       &status_byte, 1);
   if (1 != rc) {
    tuner_warn("i2c i/o read error: rc == %d "
        "(should be 1)\n", rc);
    break;
   }
   if (status_byte & TUNER_PLL_LOCKED)
    break;
   udelay(10);
  }


  config &= ~TUNER_CHARGE_PUMP;
  buffer[0] = (div>>8) & 0x7f;
  buffer[1] = div & 0xff;
  buffer[2] = config;
  buffer[3] = cb;
  tuner_dbg("tv 0x%02x 0x%02x 0x%02x 0x%02x\n",
     buffer[0], buffer[1], buffer[2], buffer[3]);

  rc = tuner_i2c_xfer_send(&priv->i2c_props, buffer, 4);
  if (4 != rc)
   tuner_warn("i2c i/o error: rc == %d "
       "(should be 4)\n", rc);
  break;
 }
 }

 return 0;
}
