
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct tda8290_priv {int i2c_props; TYPE_1__ cfg; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;

__attribute__((used)) static void tda8290_init_if(struct dvb_frontend *fe)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;

 unsigned char set_VS[] = { 0x30, 0x6F };
 unsigned char set_GP00_CF[] = { 0x20, 0x01 };
 unsigned char set_GP01_CF[] = { 0x20, 0x0B };

 if ((priv->cfg.config == 1) || (priv->cfg.config == 2))
  tuner_i2c_xfer_send(&priv->i2c_props, set_GP00_CF, 2);
 else
  tuner_i2c_xfer_send(&priv->i2c_props, set_GP01_CF, 2);
 tuner_i2c_xfer_send(&priv->i2c_props, set_VS, 2);
}
