
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_dvb_adapter {int fe_param; } ;
struct poseidon {struct pd_dvb_adapter dvb_data; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;


 int memcpy (struct dvb_frontend_parameters*,int *,int) ;

__attribute__((used)) static int poseidon_get_fe(struct dvb_frontend *fe,
   struct dvb_frontend_parameters *fep)
{
 struct poseidon *pd = fe->demodulator_priv;
 struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

 memcpy(fep, &pd_dvb->fe_param, sizeof(*fep));
 return 0;
}
