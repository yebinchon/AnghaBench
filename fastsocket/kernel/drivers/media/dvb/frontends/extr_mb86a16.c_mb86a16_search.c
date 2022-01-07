
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mb86a16_state {int frequency; int srate; } ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;
typedef enum dvbfe_search { ____Placeholder_dvbfe_search } dvbfe_search ;


 int DVBFE_ALGO_SEARCH_FAILED ;
 int DVBFE_ALGO_SEARCH_SUCCESS ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 int mb86a16_set_fe (struct mb86a16_state*) ;
 int verbose ;

__attribute__((used)) static enum dvbfe_search mb86a16_search(struct dvb_frontend *fe,
     struct dvb_frontend_parameters *p)
{
 struct mb86a16_state *state = fe->demodulator_priv;

 state->frequency = p->frequency / 1000;
 state->srate = p->u.qpsk.symbol_rate / 1000;

 if (!mb86a16_set_fe(state)) {
  dprintk(verbose, MB86A16_ERROR, 1, "Succesfully acquired LOCK");
  return DVBFE_ALGO_SEARCH_SUCCESS;
 }

 dprintk(verbose, MB86A16_ERROR, 1, "Lock acquisition failed!");
 return DVBFE_ALGO_SEARCH_FAILED;
}
