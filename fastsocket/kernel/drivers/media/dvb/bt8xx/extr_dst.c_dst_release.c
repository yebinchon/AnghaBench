
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dst_state* demodulator_priv; } ;
struct dst_state {scalar_t__ dst_ca; } ;


 int dst_ca_attach ;
 int dvb_unregister_device (scalar_t__) ;
 int kfree (struct dst_state*) ;
 int symbol_put (int ) ;

__attribute__((used)) static void dst_release(struct dvb_frontend *fe)
{
 struct dst_state *state = fe->demodulator_priv;
 if (state->dst_ca) {
  dvb_unregister_device(state->dst_ca);



 }
 kfree(state);
}
