
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bandwidth; int hierarchy_information; int guard_interval; int transmission_mode; void* code_rate_LP; void* code_rate_HP; int constellation; } ;
struct TYPE_4__ {int fec_inner; int symbol_rate; } ;
struct TYPE_6__ {TYPE_2__ ofdm; TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_3__ u; int inversion; int frequency; } ;
struct dvb_frontend_private {struct dvb_frontend_parameters parameters; } ;
struct dtv_frontend_properties {int modulation; scalar_t__ delivery_system; int bandwidth_hz; int inversion; int frequency; int fec_inner; int symbol_rate; } ;
struct dvb_frontend {struct dvb_frontend_private* frontend_priv; struct dtv_frontend_properties dtv_property_cache; } ;




 int BANDWIDTH_6_MHZ ;
 int BANDWIDTH_7_MHZ ;
 int BANDWIDTH_8_MHZ ;
 int BANDWIDTH_AUTO ;
 void* FEC_AUTO ;
 int GUARD_INTERVAL_AUTO ;
 int HIERARCHY_AUTO ;

 int QAM_AUTO ;

 scalar_t__ SYS_ISDBT ;
 int TRANSMISSION_MODE_AUTO ;

__attribute__((used)) static void dtv_property_adv_params_sync(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct dvb_frontend_private *fepriv = fe->frontend_priv;
 struct dvb_frontend_parameters *p = &fepriv->parameters;

 p->frequency = c->frequency;
 p->inversion = c->inversion;

 switch(c->modulation) {
 case 129:
 case 131:
 case 130:
 case 128:
  p->u.qpsk.symbol_rate = c->symbol_rate;
  p->u.qpsk.fec_inner = c->fec_inner;
  break;
 default:
  break;
 }

 if(c->delivery_system == SYS_ISDBT) {

  p->frequency = c->frequency;
  p->inversion = c->inversion;
  p->u.ofdm.constellation = QAM_AUTO;
  p->u.ofdm.code_rate_HP = FEC_AUTO;
  p->u.ofdm.code_rate_LP = FEC_AUTO;
  p->u.ofdm.transmission_mode = TRANSMISSION_MODE_AUTO;
  p->u.ofdm.guard_interval = GUARD_INTERVAL_AUTO;
  p->u.ofdm.hierarchy_information = HIERARCHY_AUTO;
  if (c->bandwidth_hz == 8000000)
   p->u.ofdm.bandwidth = BANDWIDTH_8_MHZ;
  else if (c->bandwidth_hz == 7000000)
   p->u.ofdm.bandwidth = BANDWIDTH_7_MHZ;
  else if (c->bandwidth_hz == 6000000)
   p->u.ofdm.bandwidth = BANDWIDTH_6_MHZ;
  else
   p->u.ofdm.bandwidth = BANDWIDTH_AUTO;
 }
}
