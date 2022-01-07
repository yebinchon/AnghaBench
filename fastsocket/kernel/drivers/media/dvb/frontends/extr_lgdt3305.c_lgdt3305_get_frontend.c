
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lgdt3305_state {int current_frequency; int current_modulation; } ;
struct TYPE_3__ {int modulation; } ;
struct TYPE_4__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;


 int lg_dbg (char*) ;

__attribute__((used)) static int lgdt3305_get_frontend(struct dvb_frontend *fe,
     struct dvb_frontend_parameters *param)
{
 struct lgdt3305_state *state = fe->demodulator_priv;

 lg_dbg("\n");

 param->u.vsb.modulation = state->current_modulation;
 param->frequency = state->current_frequency;
 return 0;
}
