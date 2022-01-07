
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt2060_priv {TYPE_2__* cfg; } ;
struct TYPE_3__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct mt2060_priv* tuner_priv; } ;
struct TYPE_4__ {int clock_out; } ;


 int REG_VGAG ;
 int mt2060_writereg (struct mt2060_priv*,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mt2060_init(struct dvb_frontend *fe)
{
 struct mt2060_priv *priv = fe->tuner_priv;
 int ret;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 ret = mt2060_writereg(priv, REG_VGAG,
         (priv->cfg->clock_out << 6) | 0x33);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return ret;
}
