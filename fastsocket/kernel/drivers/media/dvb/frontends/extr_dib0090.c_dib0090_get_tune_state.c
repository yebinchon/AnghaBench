
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int tune_state; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;



enum frontend_tune_state dib0090_get_tune_state(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;

 return state->tune_state;
}
