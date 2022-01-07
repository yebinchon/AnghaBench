
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgs8gl5_state {int dummy; } ;
struct dvb_frontend {struct lgs8gl5_state* demodulator_priv; } ;


 int kfree (struct lgs8gl5_state*) ;

__attribute__((used)) static void
lgs8gl5_release(struct dvb_frontend *fe)
{
 struct lgs8gl5_state *state = fe->demodulator_priv;
 kfree(state);
}
