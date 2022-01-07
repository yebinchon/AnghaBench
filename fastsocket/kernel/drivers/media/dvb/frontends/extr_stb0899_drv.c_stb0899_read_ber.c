
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stb0899_internal {int err_ctrl; int lock; int v_status; } ;
struct stb0899_state {int delsys; int verbose; struct stb0899_internal internal; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int EINVAL ;
 int FE_DEBUG ;
 int MAKEWORD16 (int ,int ) ;
 int NOE ;
 int STB0899_ECNT1L ;
 int STB0899_ECNT1M ;
 int STB0899_GETFIELD (int ,int ) ;



 int VSTATUS_PRFVIT ;
 int dprintk (int ,int ,int,char*) ;
 int msleep (int) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;

__attribute__((used)) static int stb0899_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_internal *internal = &state->internal;

 u8 lsb, msb;
 u32 i;

 *ber = 0;

 switch (state->delsys) {
 case 129:
 case 130:
  if (internal->lock) {

   for (i = 0; i < 5; i++) {
    msleep(100);
    lsb = stb0899_read_reg(state, STB0899_ECNT1L);
    msb = stb0899_read_reg(state, STB0899_ECNT1M);
    *ber += MAKEWORD16(msb, lsb);
   }
   *ber /= 5;

   if (STB0899_GETFIELD(VSTATUS_PRFVIT, internal->v_status)) {

    *ber *= 9766;

    *ber /= (-1 + (1 << (2 * STB0899_GETFIELD(NOE, internal->err_ctrl))));
    *ber /= 8;
   }
  }
  break;
 case 128:
  if (internal->lock) {

   for (i = 0; i < 5; i++) {
    msleep(100);
    lsb = stb0899_read_reg(state, STB0899_ECNT1L);
    msb = stb0899_read_reg(state, STB0899_ECNT1M);
    *ber += MAKEWORD16(msb, lsb);
   }

   *ber *= 10000000;
   *ber /= (-1 + (1 << (4 + 2 * STB0899_GETFIELD(NOE, internal->err_ctrl))));
  }
  break;
 default:
  dprintk(state->verbose, FE_DEBUG, 1, "Unsupported delivery system");
  return -EINVAL;
 }

 return 0;
}
