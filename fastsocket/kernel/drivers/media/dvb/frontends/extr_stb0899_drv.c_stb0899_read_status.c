
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_internal {int lock; } ;
struct stb0899_state {int delsys; int verbose; struct stb0899_internal internal; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int ACCEPTED_STREAM ;
 int CFGPDELSTATUS_LOCK ;
 int CONTINUOUS_STREAM ;
 int CSM_LOCK ;
 int DMD_STAT2 ;
 int EINVAL ;
 int FE_DEBUG ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int STB0899_CFGPDELSTATUS1 ;
 int STB0899_GETFIELD (int ,int ) ;
 int STB0899_PLPARM ;
 int STB0899_POSTPROC_GPIO_LOCK ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_VSTATUS ;



 int UWP_LOCK ;
 int VITCURPUN ;
 int VSTATUS_LOCKEDVIT ;
 int dprintk (int ,int ,int,char*) ;
 int stb0899_postproc (struct stb0899_state*,int ,int) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;

__attribute__((used)) static int stb0899_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_internal *internal = &state->internal;
 u8 reg;
 *status = 0;

 switch (state->delsys) {
 case 129:
 case 130:
  dprintk(state->verbose, FE_DEBUG, 1, "Delivery system DVB-S/DSS");
  if (internal->lock) {
   reg = stb0899_read_reg(state, STB0899_VSTATUS);
   if (STB0899_GETFIELD(VSTATUS_LOCKEDVIT, reg)) {
    dprintk(state->verbose, FE_DEBUG, 1, "--------> FE_HAS_CARRIER | FE_HAS_LOCK");
    *status |= FE_HAS_CARRIER | FE_HAS_LOCK;

    reg = stb0899_read_reg(state, STB0899_PLPARM);
    if (STB0899_GETFIELD(VITCURPUN, reg)) {
     dprintk(state->verbose, FE_DEBUG, 1, "--------> FE_HAS_VITERBI | FE_HAS_SYNC");
     *status |= FE_HAS_VITERBI | FE_HAS_SYNC;

     stb0899_postproc(state, STB0899_POSTPROC_GPIO_LOCK, 1);
    }
   }
  }
  break;
 case 128:
  dprintk(state->verbose, FE_DEBUG, 1, "Delivery system DVB-S2");
  if (internal->lock) {
   reg = STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_STAT2);
   if (STB0899_GETFIELD(UWP_LOCK, reg) && STB0899_GETFIELD(CSM_LOCK, reg)) {
    *status |= FE_HAS_CARRIER;
    dprintk(state->verbose, FE_DEBUG, 1,
     "UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER");

    reg = stb0899_read_reg(state, STB0899_CFGPDELSTATUS1);
    if (STB0899_GETFIELD(CFGPDELSTATUS_LOCK, reg)) {
     *status |= FE_HAS_LOCK;
     dprintk(state->verbose, FE_DEBUG, 1,
      "Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK");

    }
    if (STB0899_GETFIELD(CONTINUOUS_STREAM, reg)) {
     *status |= FE_HAS_VITERBI;
     dprintk(state->verbose, FE_DEBUG, 1,
      "Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI");
    }
    if (STB0899_GETFIELD(ACCEPTED_STREAM, reg)) {
     *status |= FE_HAS_SYNC;
     dprintk(state->verbose, FE_DEBUG, 1,
      "Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC");

     stb0899_postproc(state, STB0899_POSTPROC_GPIO_LOCK, 1);
    }
   }
  }
  break;
 default:
  dprintk(state->verbose, FE_DEBUG, 1, "Unsupported delivery system");
  return -EINVAL;
 }
 return 0;
}
