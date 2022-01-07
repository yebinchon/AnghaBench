
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct stv0299_state {TYPE_1__* config; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;
struct TYPE_2__ {int mclk; int (* set_symbol_rate ) (struct dvb_frontend*,int,int) ;} ;


 int EINVAL ;
 int do_div (int,int) ;
 int stub1 (struct dvb_frontend*,int,int) ;

__attribute__((used)) static int stv0299_set_symbolrate (struct dvb_frontend* fe, u32 srate)
{
 struct stv0299_state* state = fe->demodulator_priv;
 u64 big = srate;
 u32 ratio;


 if ((srate < 1000000) || (srate > 45000000)) return -EINVAL;


 big = big << 20;
 big += (state->config->mclk-1);
 do_div(big, state->config->mclk);
 ratio = big << 4;

 return state->config->set_symbol_rate(fe, srate, ratio);
}
