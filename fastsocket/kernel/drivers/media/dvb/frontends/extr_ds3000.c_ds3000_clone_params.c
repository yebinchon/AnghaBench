
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct ds3000_state* demodulator_priv; } ;
struct ds3000_state {int dnxt; int dcur; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void ds3000_clone_params(struct dvb_frontend *fe)
{
 struct ds3000_state *state = fe->demodulator_priv;
 memcpy(&state->dcur, &state->dnxt, sizeof(state->dcur));
}
