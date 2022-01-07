
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_dvb_adapter {int fe_param; } ;
struct poseidon {int pm_resume; int pm_suspend; struct pd_dvb_adapter dvb_data; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;
typedef int s32 ;


 int memset (int *,int ,int) ;
 int pm_dvb_resume ;
 int pm_dvb_suspend ;

__attribute__((used)) static s32 poseidon_fe_init(struct dvb_frontend *fe)
{
 struct poseidon *pd = fe->demodulator_priv;
 struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;





 memset(&pd_dvb->fe_param, 0,
   sizeof(struct dvb_frontend_parameters));
 return 0;
}
