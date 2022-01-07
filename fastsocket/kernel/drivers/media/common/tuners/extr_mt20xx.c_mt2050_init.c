
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct microtune_priv {int i2c_props; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct microtune_priv* tuner_priv; } ;


 int memcpy (int *,int *,int) ;
 int mt2050_tuner_ops ;
 int tuner_dbg (char*,unsigned char) ;
 int tuner_i2c_xfer_recv (int *,unsigned char*,int) ;
 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;

__attribute__((used)) static int mt2050_init(struct dvb_frontend *fe)
{
 struct microtune_priv *priv = fe->tuner_priv;
 unsigned char buf[2];
 int ret;

 buf[0]=6;
 buf[1]=0x10;
 ret=tuner_i2c_xfer_send(&priv->i2c_props,buf,2);

 buf[0]=0x0f;
 buf[1]=0x0f;
 ret=tuner_i2c_xfer_send(&priv->i2c_props,buf,2);

 buf[0]=0x0d;
 ret=tuner_i2c_xfer_send(&priv->i2c_props,buf,1);
 tuner_i2c_xfer_recv(&priv->i2c_props,buf,1);

 tuner_dbg("mt2050: sro is %x\n",buf[0]);

 memcpy(&fe->ops.tuner_ops, &mt2050_tuner_ops, sizeof(struct dvb_tuner_ops));

 return 0;
}
