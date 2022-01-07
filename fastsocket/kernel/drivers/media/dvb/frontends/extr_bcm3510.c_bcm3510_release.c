
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct bcm3510_state* demodulator_priv; } ;
struct bcm3510_state {int dummy; } ;


 int kfree (struct bcm3510_state*) ;

__attribute__((used)) static void bcm3510_release(struct dvb_frontend* fe)
{
 struct bcm3510_state* state = fe->demodulator_priv;
 kfree(state);
}
