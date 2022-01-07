
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dvb_pll_priv {int frequency; int bandwidth; int pll_i2c_address; } ;
struct TYPE_7__ {int bandwidth; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_4__ u; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
struct dvb_frontend {TYPE_2__ ops; struct dvb_pll_priv* tuner_priv; } ;


 int EINVAL ;
 scalar_t__ FE_OFDM ;
 int dvb_pll_configure (struct dvb_frontend*,int *,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int dvb_pll_calc_regs(struct dvb_frontend *fe,
        struct dvb_frontend_parameters *params,
        u8 *buf, int buf_len)
{
 struct dvb_pll_priv *priv = fe->tuner_priv;
 int result;
 u32 frequency = 0;

 if (buf_len < 5)
  return -EINVAL;

 if ((result = dvb_pll_configure(fe, buf+1, params)) < 0)
  return result;
 else
  frequency = result;

 buf[0] = priv->pll_i2c_address;

 priv->frequency = frequency;
 priv->bandwidth = (fe->ops.info.type == FE_OFDM) ? params->u.ofdm.bandwidth : 0;

 return 5;
}
