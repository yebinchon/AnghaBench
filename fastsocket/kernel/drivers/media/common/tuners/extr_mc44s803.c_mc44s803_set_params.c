
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mc44s803_priv {int frequency; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct mc44s803_priv* tuner_priv; } ;


 int KERN_WARNING ;
 int MC44S803_ADDR ;
 int MC44S803_AT ;
 int MC44S803_DA ;
 int MC44S803_IF1 ;
 int MC44S803_IF2 ;
 int MC44S803_LO1 ;
 int MC44S803_LO2 ;
 int MC44S803_LO_REF ;
 int MC44S803_OSC ;
 int MC44S803_R1 ;
 int MC44S803_R2 ;
 int MC44S803_REFBUF_EN ;
 int MC44S803_REG_DIGTUNE ;
 int MC44S803_REG_LO1 ;
 int MC44S803_REG_LO2 ;
 int MC44S803_REG_REFDIV ;
 int MC44S803_REG_SM (int,int ) ;
 int mc44s803_writereg (struct mc44s803_priv*,int) ;
 int mc_printk (int ,char*) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mc44s803_set_params(struct dvb_frontend *fe,
          struct dvb_frontend_parameters *params)
{
 struct mc44s803_priv *priv = fe->tuner_priv;
 u32 r1, r2, n1, n2, lo1, lo2, freq, val;
 int err;

 priv->frequency = params->frequency;

 r1 = MC44S803_OSC / 1000000;
 r2 = MC44S803_OSC / 100000;

 n1 = (params->frequency + MC44S803_IF1 + 500000) / 1000000;
 freq = MC44S803_OSC / r1 * n1;
 lo1 = ((60 * n1) + (r1 / 2)) / r1;
 freq = freq - params->frequency;

 n2 = (freq - MC44S803_IF2 + 50000) / 100000;
 lo2 = ((60 * n2) + (r2 / 2)) / r2;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 val = MC44S803_REG_SM(MC44S803_REG_REFDIV, MC44S803_ADDR) |
       MC44S803_REG_SM(r1-1, MC44S803_R1) |
       MC44S803_REG_SM(r2-1, MC44S803_R2) |
       MC44S803_REG_SM(1, MC44S803_REFBUF_EN);

 err = mc44s803_writereg(priv, val);
 if (err)
  goto exit;

 val = MC44S803_REG_SM(MC44S803_REG_LO1, MC44S803_ADDR) |
       MC44S803_REG_SM(n1-2, MC44S803_LO1);

 err = mc44s803_writereg(priv, val);
 if (err)
  goto exit;

 val = MC44S803_REG_SM(MC44S803_REG_LO2, MC44S803_ADDR) |
       MC44S803_REG_SM(n2-2, MC44S803_LO2);

 err = mc44s803_writereg(priv, val);
 if (err)
  goto exit;

 val = MC44S803_REG_SM(MC44S803_REG_DIGTUNE, MC44S803_ADDR) |
       MC44S803_REG_SM(1, MC44S803_DA) |
       MC44S803_REG_SM(lo1, MC44S803_LO_REF) |
       MC44S803_REG_SM(1, MC44S803_AT);

 err = mc44s803_writereg(priv, val);
 if (err)
  goto exit;

 val = MC44S803_REG_SM(MC44S803_REG_DIGTUNE, MC44S803_ADDR) |
       MC44S803_REG_SM(2, MC44S803_DA) |
       MC44S803_REG_SM(lo2, MC44S803_LO_REF) |
       MC44S803_REG_SM(1, MC44S803_AT);

 err = mc44s803_writereg(priv, val);
 if (err)
  goto exit;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return 0;

exit:
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 mc_printk(KERN_WARNING, "I/O Error\n");
 return err;
}
