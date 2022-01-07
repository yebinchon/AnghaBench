
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int i2c_master; } ;


 int dibx000_exit_i2c_master (int *) ;
 int kfree (struct dib3000mc_state*) ;

__attribute__((used)) static void dib3000mc_release(struct dvb_frontend *fe)
{
 struct dib3000mc_state *state = fe->demodulator_priv;
 dibx000_exit_i2c_master(&state->i2c_master);
 kfree(state);
}
