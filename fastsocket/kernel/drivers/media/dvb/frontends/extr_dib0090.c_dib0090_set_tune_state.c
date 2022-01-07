
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int tune_state; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;



int dib0090_set_tune_state(struct dvb_frontend *fe, enum frontend_tune_state tune_state)
{
 struct dib0090_state *state = fe->tuner_priv;

 state->tune_state = tune_state;
 return 0;
}
