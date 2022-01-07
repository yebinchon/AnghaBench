
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner_state {int tunerstep; int refclock; int iqsense; int bandwidth; scalar_t__ ifreq; } ;
struct stb6100_state {int bandwidth; int reference; struct tuner_state status; } ;
struct dvb_frontend {struct stb6100_state* tuner_priv; } ;



__attribute__((used)) static int stb6100_init(struct dvb_frontend *fe)
{
 struct stb6100_state *state = fe->tuner_priv;
 struct tuner_state *status = &state->status;

 status->tunerstep = 125000;
 status->ifreq = 0;
 status->refclock = 27000000;
 status->iqsense = 1;
 status->bandwidth = 36000;
 state->bandwidth = status->bandwidth * 1000;
 state->reference = status->refclock / 1000;


 return 0;
}
