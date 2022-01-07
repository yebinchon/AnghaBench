
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct or51211_state {TYPE_1__* config; } ;
struct dvb_frontend {struct or51211_state* demodulator_priv; } ;
struct TYPE_2__ {int (* sleep ) (struct dvb_frontend*) ;} ;


 int kfree (struct or51211_state*) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static void or51211_release(struct dvb_frontend* fe)
{
 struct or51211_state* state = fe->demodulator_priv;
 state->config->sleep(fe);
 kfree(state);
}
