
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct tda18271_std_map_item {int dummy; } ;
struct tda18271_std_map {struct tda18271_std_map_item dvbt_8; struct tda18271_std_map_item dvbt_7; struct tda18271_std_map_item dvbt_6; struct tda18271_std_map_item qam_6; struct tda18271_std_map_item atsc_6; } ;
struct tda18271_priv {int frequency; int bandwidth; int mode; struct tda18271_std_map std; } ;
struct TYPE_11__ {int bandwidth; } ;
struct TYPE_7__ {int modulation; } ;
struct TYPE_12__ {TYPE_5__ ofdm; TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {int frequency; TYPE_6__ u; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int (* standby ) (struct dvb_frontend*) ;} ;
struct TYPE_10__ {TYPE_3__ info; TYPE_2__ analog_ops; } ;
struct dvb_frontend {TYPE_4__ ops; struct tda18271_priv* tuner_priv; } ;





 int EINVAL ;
 scalar_t__ FE_ATSC ;
 scalar_t__ FE_OFDM ;


 int TDA18271_DIGITAL ;


 int stub1 (struct dvb_frontend*) ;
 int tda18271_tune (struct dvb_frontend*,struct tda18271_std_map_item*,int,int) ;
 scalar_t__ tda_fail (int) ;
 int tda_warn (char*) ;

__attribute__((used)) static int tda18271_set_params(struct dvb_frontend *fe,
          struct dvb_frontend_parameters *params)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 struct tda18271_std_map *std_map = &priv->std;
 struct tda18271_std_map_item *map;
 int ret;
 u32 bw, freq = params->frequency;

 priv->mode = TDA18271_DIGITAL;

 if (fe->ops.info.type == FE_ATSC) {
  switch (params->u.vsb.modulation) {
  case 128:
  case 129:
   map = &std_map->atsc_6;
   break;
  case 130:
  case 131:
   map = &std_map->qam_6;
   break;
  default:
   tda_warn("modulation not set!\n");
   return -EINVAL;
  }




  bw = 6000000;
 } else if (fe->ops.info.type == FE_OFDM) {
  switch (params->u.ofdm.bandwidth) {
  case 134:
   bw = 6000000;
   map = &std_map->dvbt_6;
   break;
  case 133:
   bw = 7000000;
   map = &std_map->dvbt_7;
   break;
  case 132:
   bw = 8000000;
   map = &std_map->dvbt_8;
   break;
  default:
   tda_warn("bandwidth not set!\n");
   return -EINVAL;
  }
 } else {
  tda_warn("modulation type not supported!\n");
  return -EINVAL;
 }


 if (fe->ops.analog_ops.standby)
  fe->ops.analog_ops.standby(fe);

 ret = tda18271_tune(fe, map, freq, bw);

 if (tda_fail(ret))
  goto fail;

 priv->frequency = freq;
 priv->bandwidth = (fe->ops.info.type == FE_OFDM) ?
  params->u.ofdm.bandwidth : 0;
fail:
 return ret;
}
