
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stv0297_state {TYPE_1__* config; int base_freq; } ;
struct TYPE_5__ {int symbol_rate; int modulation; int fec_inner; } ;
struct TYPE_6__ {TYPE_2__ qam; } ;
struct dvb_frontend_parameters {scalar_t__ inversion; TYPE_3__ u; int frequency; } ;
struct dvb_frontend {struct stv0297_state* demodulator_priv; } ;
struct TYPE_4__ {scalar_t__ invert; } ;


 int FEC_NONE ;
 scalar_t__ INVERSION_OFF ;
 scalar_t__ INVERSION_ON ;
 int QAM_128 ;
 int QAM_16 ;
 int QAM_256 ;
 int QAM_32 ;
 int QAM_64 ;
 int stv0297_get_symbolrate (struct stv0297_state*) ;
 int stv0297_readreg (struct stv0297_state*,int) ;

__attribute__((used)) static int stv0297_get_frontend(struct dvb_frontend *fe, struct dvb_frontend_parameters *p)
{
 struct stv0297_state *state = fe->demodulator_priv;
 int reg_00, reg_83;

 reg_00 = stv0297_readreg(state, 0x00);
 reg_83 = stv0297_readreg(state, 0x83);

 p->frequency = state->base_freq;
 p->inversion = (reg_83 & 0x08) ? INVERSION_ON : INVERSION_OFF;
 if (state->config->invert)
  p->inversion = (p->inversion == INVERSION_ON) ? INVERSION_OFF : INVERSION_ON;
 p->u.qam.symbol_rate = stv0297_get_symbolrate(state) * 1000;
 p->u.qam.fec_inner = FEC_NONE;

 switch ((reg_00 >> 4) & 0x7) {
 case 0:
  p->u.qam.modulation = QAM_16;
  break;
 case 1:
  p->u.qam.modulation = QAM_32;
  break;
 case 2:
  p->u.qam.modulation = QAM_128;
  break;
 case 3:
  p->u.qam.modulation = QAM_256;
  break;
 case 4:
  p->u.qam.modulation = QAM_64;
  break;
 }

 return 0;
}
