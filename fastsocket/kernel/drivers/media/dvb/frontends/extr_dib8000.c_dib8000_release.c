
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int i2c_master; } ;


 int dibx000_exit_i2c_master (int *) ;
 int kfree (struct dib8000_state*) ;

__attribute__((used)) static void dib8000_release(struct dvb_frontend *fe)
{
 struct dib8000_state *st = fe->demodulator_priv;
 dibx000_exit_i2c_master(&st->i2c_master);
 kfree(st);
}
