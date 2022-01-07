
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jdvbt90502_state {int dummy; } ;
struct dvb_frontend {struct jdvbt90502_state* demodulator_priv; } ;


 int kfree (struct jdvbt90502_state*) ;

__attribute__((used)) static void jdvbt90502_release(struct dvb_frontend *fe)
{
 struct jdvbt90502_state *state = fe->demodulator_priv;
 kfree(state);
}
