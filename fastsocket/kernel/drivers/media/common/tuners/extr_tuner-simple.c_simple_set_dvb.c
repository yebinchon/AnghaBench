
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tuner_simple_priv {int type; size_t nr; } ;
struct TYPE_5__ {int modulation; } ;
struct TYPE_4__ {int bandwidth; } ;
struct TYPE_6__ {TYPE_2__ vsb; TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_3__ u; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int BANDWIDTH_8_MHZ ;
 unsigned int* dtv_input ;
 int simple_set_rf_input (struct dvb_frontend*,int*,int*,unsigned int) ;

__attribute__((used)) static void simple_set_dvb(struct dvb_frontend *fe, u8 *buf,
      const struct dvb_frontend_parameters *params)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;

 switch (priv->type) {
 case 131:
 case 132:
  if (params->u.ofdm.bandwidth == BANDWIDTH_8_MHZ &&
      params->frequency >= 158870000)
   buf[3] |= 0x08;
  break;
 case 130:

  buf[3] |= (params->frequency < 161000000) ? 1 :
     (params->frequency < 444000000) ? 2 : 4;


  if (params->u.ofdm.bandwidth == BANDWIDTH_8_MHZ)
   buf[3] |= 1 << 3;
  break;
 case 129:
 case 133:
 {
  unsigned int new_rf;

  if (dtv_input[priv->nr])
   new_rf = dtv_input[priv->nr];
  else
   switch (params->u.vsb.modulation) {
   case 134:
   case 135:
    new_rf = 1;
    break;
   case 128:
   default:
    new_rf = 0;
    break;
   }
  simple_set_rf_input(fe, &buf[2], &buf[3], new_rf);
  break;
 }
 default:
  break;
 }
}
