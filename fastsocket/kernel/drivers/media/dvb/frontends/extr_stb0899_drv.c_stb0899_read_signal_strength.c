
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct stb0899_internal {int lock; } ;
struct stb0899_state {int delsys; int verbose; struct stb0899_internal internal; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef int s8 ;
typedef int s32 ;


 int AGCIQVALUE ;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int FE_DEBUG ;
 int IF_AGC_GAIN ;
 int STB0899_AGCIQIN ;
 int STB0899_DEMOD ;
 int STB0899_GETFIELD (int ,int ) ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_VSTATUS ;



 int VSTATUS_LOCKEDVIT ;
 int dprintk (int ,int ,int,char*,...) ;
 int stb0899_dvbs2rf_tab ;
 int stb0899_dvbsrf_tab ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_table_lookup (int ,int ,int) ;

__attribute__((used)) static int stb0899_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_internal *internal = &state->internal;

 int val;
 u32 reg;
 switch (state->delsys) {
 case 129:
 case 130:
  if (internal->lock) {
   reg = stb0899_read_reg(state, STB0899_VSTATUS);
   if (STB0899_GETFIELD(VSTATUS_LOCKEDVIT, reg)) {

    reg = stb0899_read_reg(state, STB0899_AGCIQIN);
    val = (s32)(s8)STB0899_GETFIELD(AGCIQVALUE, reg);

    *strength = stb0899_table_lookup(stb0899_dvbsrf_tab, ARRAY_SIZE(stb0899_dvbsrf_tab) - 1, val);
    *strength += 750;
    dprintk(state->verbose, FE_DEBUG, 1, "AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm",
     val & 0xff, *strength);
   }
  }
  break;
 case 128:
  if (internal->lock) {
   reg = STB0899_READ_S2REG(STB0899_DEMOD, IF_AGC_GAIN);
   val = STB0899_GETFIELD(IF_AGC_GAIN, reg);

   *strength = stb0899_table_lookup(stb0899_dvbs2rf_tab, ARRAY_SIZE(stb0899_dvbs2rf_tab) - 1, val);
   *strength += 750;
   dprintk(state->verbose, FE_DEBUG, 1, "IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm",
    val & 0x3fff, *strength);
  }
  break;
 default:
  dprintk(state->verbose, FE_DEBUG, 1, "Unsupported delivery system");
  return -EINVAL;
 }

 return 0;
}
