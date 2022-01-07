
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int current_rf; } ;



__attribute__((used)) static int dib0090_get_frequency(struct dvb_frontend *fe, u32 * frequency)
{
 struct dib0090_state *state = fe->tuner_priv;

 *frequency = 1000 * state->current_rf;
 return 0;
}
