
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zl10036_state {int frequency; } ;
struct dvb_frontend {struct zl10036_state* tuner_priv; } ;



__attribute__((used)) static int zl10036_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct zl10036_state *state = fe->tuner_priv;

 *frequency = state->frequency;

 return 0;
}
