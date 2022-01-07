
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int i2c_master; } ;


 int dibx000_exit_i2c_master (int *) ;
 int kfree (struct dib7000m_state*) ;

__attribute__((used)) static void dib7000m_release(struct dvb_frontend *demod)
{
 struct dib7000m_state *st = demod->demodulator_priv;
 dibx000_exit_i2c_master(&st->i2c_master);
 kfree(st);
}
