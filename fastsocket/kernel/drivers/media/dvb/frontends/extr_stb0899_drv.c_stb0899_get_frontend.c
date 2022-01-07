
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stb0899_internal {int srate; } ;
struct stb0899_state {int verbose; struct stb0899_internal internal; } ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int FE_DEBUG ;
 int dprintk (int ,int ,int,char*) ;

__attribute__((used)) static int stb0899_get_frontend(struct dvb_frontend *fe, struct dvb_frontend_parameters *p)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_internal *internal = &state->internal;

 dprintk(state->verbose, FE_DEBUG, 1, "Get params");
 p->u.qpsk.symbol_rate = internal->srate;

 return 0;
}
