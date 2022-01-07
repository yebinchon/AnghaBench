
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt330x_state {int current_frequency; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {struct lgdt330x_state* demodulator_priv; } ;



__attribute__((used)) static int lgdt330x_get_frontend(struct dvb_frontend* fe,
     struct dvb_frontend_parameters* param)
{
 struct lgdt330x_state *state = fe->demodulator_priv;
 param->frequency = state->current_frequency;
 return 0;
}
