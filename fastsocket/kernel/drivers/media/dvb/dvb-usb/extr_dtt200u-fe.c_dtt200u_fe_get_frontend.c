
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtt200u_fe_state {int fep; } ;


 int memcpy (struct dvb_frontend_parameters*,int *,int) ;

__attribute__((used)) static int dtt200u_fe_get_frontend(struct dvb_frontend* fe,
      struct dvb_frontend_parameters *fep)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 memcpy(fep,&state->fep,sizeof(struct dvb_frontend_parameters));
 return 0;
}
