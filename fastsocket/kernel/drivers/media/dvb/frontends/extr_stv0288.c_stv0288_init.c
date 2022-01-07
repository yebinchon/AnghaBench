
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stv0288_state {TYPE_1__* config; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;
struct TYPE_2__ {int* inittab; } ;


 int dprintk (char*) ;
 int msleep (int) ;
 int* stv0288_inittab ;
 int stv0288_writeregI (struct stv0288_state*,int,int) ;

__attribute__((used)) static int stv0288_init(struct dvb_frontend *fe)
{
 struct stv0288_state *state = fe->demodulator_priv;
 int i;
 u8 reg;
 u8 val;

 dprintk("stv0288: init chip\n");
 stv0288_writeregI(state, 0x41, 0x04);
 msleep(50);


 if (state->config->inittab == ((void*)0)) {
  for (i = 0; !(stv0288_inittab[i] == 0xff &&
    stv0288_inittab[i + 1] == 0xff); i += 2)
   stv0288_writeregI(state, stv0288_inittab[i],
     stv0288_inittab[i + 1]);
 } else {
  for (i = 0; ; i += 2) {
   reg = state->config->inittab[i];
   val = state->config->inittab[i+1];
   if (reg == 0xff && val == 0xff)
    break;
   stv0288_writeregI(state, reg, val);
  }
 }
 return 0;
}
