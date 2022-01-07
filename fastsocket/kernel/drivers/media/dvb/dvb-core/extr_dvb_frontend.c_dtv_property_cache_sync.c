
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int modulation; } ;
struct TYPE_12__ {int hierarchy_information; int guard_interval; int transmission_mode; int constellation; int code_rate_LP; int code_rate_HP; int bandwidth; } ;
struct TYPE_11__ {int modulation; int fec_inner; int symbol_rate; } ;
struct TYPE_10__ {int fec_inner; int symbol_rate; } ;
struct TYPE_14__ {TYPE_6__ vsb; TYPE_5__ ofdm; TYPE_4__ qam; TYPE_3__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_7__ u; int inversion; int frequency; } ;
struct TYPE_8__ {int type; } ;
struct TYPE_9__ {TYPE_1__ info; } ;
struct dtv_frontend_properties {int bandwidth_hz; int delivery_system; int modulation; int hierarchy; int guard_interval; int transmission_mode; int code_rate_LP; int code_rate_HP; int fec_inner; int symbol_rate; int rolloff; int inversion; int frequency; } ;
struct dvb_frontend {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; } ;


 int BANDWIDTH_6_MHZ ;
 int BANDWIDTH_7_MHZ ;
 int BANDWIDTH_8_MHZ ;




 int QPSK ;
 int ROLLOFF_35 ;
 int SYS_ATSC ;
 int SYS_DVBC_ANNEX_AC ;
 int SYS_DVBC_ANNEX_B ;
 int SYS_DVBS ;
 int SYS_DVBT ;
 int VSB_16 ;
 int VSB_8 ;

__attribute__((used)) static void dtv_property_cache_sync(struct dvb_frontend *fe,
        struct dvb_frontend_parameters *p)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 c->frequency = p->frequency;
 c->inversion = p->inversion;

 switch (fe->ops.info.type) {
 case 128:
  c->modulation = QPSK;
  c->rolloff = ROLLOFF_35;
  c->symbol_rate = p->u.qpsk.symbol_rate;
  c->fec_inner = p->u.qpsk.fec_inner;
  c->delivery_system = SYS_DVBS;
  break;
 case 129:
  c->symbol_rate = p->u.qam.symbol_rate;
  c->fec_inner = p->u.qam.fec_inner;
  c->modulation = p->u.qam.modulation;
  c->delivery_system = SYS_DVBC_ANNEX_AC;
  break;
 case 130:
  if (p->u.ofdm.bandwidth == BANDWIDTH_6_MHZ)
   c->bandwidth_hz = 6000000;
  else if (p->u.ofdm.bandwidth == BANDWIDTH_7_MHZ)
   c->bandwidth_hz = 7000000;
  else if (p->u.ofdm.bandwidth == BANDWIDTH_8_MHZ)
   c->bandwidth_hz = 8000000;
  else

   c->bandwidth_hz = 0;
  c->code_rate_HP = p->u.ofdm.code_rate_HP;
  c->code_rate_LP = p->u.ofdm.code_rate_LP;
  c->modulation = p->u.ofdm.constellation;
  c->transmission_mode = p->u.ofdm.transmission_mode;
  c->guard_interval = p->u.ofdm.guard_interval;
  c->hierarchy = p->u.ofdm.hierarchy_information;
  c->delivery_system = SYS_DVBT;
  break;
 case 131:
  c->modulation = p->u.vsb.modulation;
  if ((c->modulation == VSB_8) || (c->modulation == VSB_16))
   c->delivery_system = SYS_ATSC;
  else
   c->delivery_system = SYS_DVBC_ANNEX_B;
  break;
 }
}
