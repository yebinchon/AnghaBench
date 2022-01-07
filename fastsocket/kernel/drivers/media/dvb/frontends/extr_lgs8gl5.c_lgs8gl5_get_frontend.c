
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgs8gl5_state {int dummy; } ;
struct dvb_ofdm_parameters {int bandwidth; int hierarchy_information; int constellation; int transmission_mode; int guard_interval; int code_rate_LP; int code_rate_HP; } ;
struct TYPE_2__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {int inversion; TYPE_1__ u; } ;
struct dvb_frontend {struct lgs8gl5_state* demodulator_priv; } ;


 int BANDWIDTH_8_MHZ ;
 int FEC_1_2 ;
 int FEC_7_8 ;
 int GUARD_INTERVAL_1_32 ;
 int HIERARCHY_NONE ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int QAM_64 ;
 int REG_INVERSION ;
 int REG_INVERSION_ON ;
 int TRANSMISSION_MODE_2K ;
 int lgs8gl5_read_reg (struct lgs8gl5_state*,int ) ;

__attribute__((used)) static int
lgs8gl5_get_frontend(struct dvb_frontend *fe,
  struct dvb_frontend_parameters *p)
{
 struct lgs8gl5_state *state = fe->demodulator_priv;
 u8 inv = lgs8gl5_read_reg(state, REG_INVERSION);
 struct dvb_ofdm_parameters *o = &p->u.ofdm;

 p->inversion = (inv & REG_INVERSION_ON) ? INVERSION_ON : INVERSION_OFF;

 o->code_rate_HP = FEC_1_2;
 o->code_rate_LP = FEC_7_8;
 o->guard_interval = GUARD_INTERVAL_1_32;
 o->transmission_mode = TRANSMISSION_MODE_2K;
 o->constellation = QAM_64;
 o->hierarchy_information = HIERARCHY_NONE;
 o->bandwidth = BANDWIDTH_8_MHZ;

 return 0;
}
