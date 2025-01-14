
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dvb; } ;
struct tda10023_state {int reg0; TYPE_2__ frontend; } ;
struct TYPE_7__ {scalar_t__ symbol_rate; int fec_inner; scalar_t__ modulation; } ;
struct TYPE_8__ {TYPE_3__ qam; } ;
struct dvb_frontend_parameters {int inversion; int frequency; TYPE_4__ u; } ;
struct dvb_frontend {struct tda10023_state* demodulator_priv; } ;
typedef int s8 ;
typedef int s32 ;
struct TYPE_5__ {int num; } ;


 int FEC_NONE ;
 scalar_t__ QAM_16 ;
 int printk (char*,int ,int,int) ;
 int tda10023_readreg (struct tda10023_state*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int tda10023_get_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct tda10023_state* state = fe->demodulator_priv;
 int sync,inv;
 s8 afc = 0;

 sync = tda10023_readreg(state, 0x11);
 afc = tda10023_readreg(state, 0x19);
 inv = tda10023_readreg(state, 0x04);

 if (verbose) {

  printk(sync & 2 ? "DVB: TDA10023(%d): AFC (%d) %dHz\n" :
      "DVB: TDA10023(%d): [AFC (%d) %dHz]\n",
   state->frontend.dvb->num, afc,
         -((s32)p->u.qam.symbol_rate * afc) >> 10);
 }

 p->inversion = (inv&0x20?0:1);
 p->u.qam.modulation = ((state->reg0 >> 2) & 7) + QAM_16;

 p->u.qam.fec_inner = FEC_NONE;
 p->frequency = ((p->frequency + 31250) / 62500) * 62500;

 if (sync & 2)
  p->frequency -= ((s32)p->u.qam.symbol_rate * afc) >> 10;

 return 0;
}
