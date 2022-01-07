
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fec_inner; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {unsigned int frequency; TYPE_2__ u; int inversion; } ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;
typedef unsigned int s32 ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int cx24110_get_fec (struct cx24110_state*) ;
 int cx24110_readreg (struct cx24110_state*,int) ;

__attribute__((used)) static int cx24110_get_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct cx24110_state *state = fe->demodulator_priv;
 s32 afc; unsigned sclk;



 sclk = cx24110_readreg (state, 0x07) & 0x03;


 if (sclk==0) sclk=90999000L/2L;
 else if (sclk==1) sclk=60666000L;
 else if (sclk==2) sclk=80888000L;
 else sclk=90999000L;
 sclk>>=8;
 afc = sclk*(cx24110_readreg (state, 0x44)&0x1f)+
       ((sclk*cx24110_readreg (state, 0x45))>>8)+
       ((sclk*cx24110_readreg (state, 0x46))>>16);

 p->frequency += afc;
 p->inversion = (cx24110_readreg (state, 0x22) & 0x10) ?
    INVERSION_ON : INVERSION_OFF;
 p->u.qpsk.fec_inner = cx24110_get_fec (state);

 return 0;
}
