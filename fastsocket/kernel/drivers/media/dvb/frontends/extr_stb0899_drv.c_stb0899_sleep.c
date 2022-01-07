
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int verbose; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int FE_DEBUG ;
 int STB0899_POSTPROC_GPIO_POWER ;
 int dprintk (int ,int ,int,char*) ;
 int stb0899_postproc (struct stb0899_state*,int ,int ) ;

__attribute__((used)) static int stb0899_sleep(struct dvb_frontend *fe)
{
 struct stb0899_state *state = fe->demodulator_priv;



 dprintk(state->verbose, FE_DEBUG, 1, "Going to Sleep .. (Really tired .. :-))");

 stb0899_postproc(state, STB0899_POSTPROC_GPIO_POWER, 0);

 return 0;
}
