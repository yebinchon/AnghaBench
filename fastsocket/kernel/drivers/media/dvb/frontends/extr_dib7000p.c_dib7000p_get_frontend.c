
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {void* code_rate_LP; void* code_rate_HP; int hierarchy_information; int constellation; int guard_interval; int transmission_mode; int bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int inversion; } ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int current_bandwidth; } ;


 int BANDWIDTH_TO_INDEX (int ) ;
 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_5_6 ;
 void* FEC_7_8 ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 int HIERARCHY_NONE ;
 int INVERSION_AUTO ;
 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;

__attribute__((used)) static int dib7000p_get_frontend(struct dvb_frontend* fe,
    struct dvb_frontend_parameters *fep)
{
 struct dib7000p_state *state = fe->demodulator_priv;
 u16 tps = dib7000p_read_word(state,463);

 fep->inversion = INVERSION_AUTO;

 fep->u.ofdm.bandwidth = BANDWIDTH_TO_INDEX(state->current_bandwidth);

 switch ((tps >> 8) & 0x3) {
  case 0: fep->u.ofdm.transmission_mode = TRANSMISSION_MODE_2K; break;
  case 1: fep->u.ofdm.transmission_mode = TRANSMISSION_MODE_8K; break;

 }

 switch (tps & 0x3) {
  case 0: fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_32; break;
  case 1: fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_16; break;
  case 2: fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_8; break;
  case 3: fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_4; break;
 }

 switch ((tps >> 14) & 0x3) {
  case 0: fep->u.ofdm.constellation = QPSK; break;
  case 1: fep->u.ofdm.constellation = QAM_16; break;
  case 2:
  default: fep->u.ofdm.constellation = QAM_64; break;
 }




 fep->u.ofdm.hierarchy_information = HIERARCHY_NONE;
 switch ((tps >> 5) & 0x7) {
  case 1: fep->u.ofdm.code_rate_HP = FEC_1_2; break;
  case 2: fep->u.ofdm.code_rate_HP = FEC_2_3; break;
  case 3: fep->u.ofdm.code_rate_HP = FEC_3_4; break;
  case 5: fep->u.ofdm.code_rate_HP = FEC_5_6; break;
  case 7:
  default: fep->u.ofdm.code_rate_HP = FEC_7_8; break;

 }

 switch ((tps >> 2) & 0x7) {
  case 1: fep->u.ofdm.code_rate_LP = FEC_1_2; break;
  case 2: fep->u.ofdm.code_rate_LP = FEC_2_3; break;
  case 3: fep->u.ofdm.code_rate_LP = FEC_3_4; break;
  case 5: fep->u.ofdm.code_rate_LP = FEC_5_6; break;
  case 7:
  default: fep->u.ofdm.code_rate_LP = FEC_7_8; break;
 }



 return 0;
}
