
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_signal_info {int symbol_rate; scalar_t__ locked; int frequency; } ;
struct stv0900_internal {struct stv0900_signal_info* result; } ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int frequency; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;



__attribute__((used)) static int stv0900_get_frontend(struct dvb_frontend *fe,
    struct dvb_frontend_parameters *p)
{
 struct stv0900_state *state = fe->demodulator_priv;
 struct stv0900_internal *intp = state->internal;
 enum fe_stv0900_demod_num demod = state->demod;
 struct stv0900_signal_info p_result = intp->result[demod];

 p->frequency = p_result.locked ? p_result.frequency : 0;
 p->u.qpsk.symbol_rate = p_result.locked ? p_result.symbol_rate : 0;
 return 0;
}
