
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct budget_patch {int dummy; } ;
typedef int fe_sec_mini_cmd_t ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int av7110_send_diseqc_msg (struct budget_patch*,int ,int *,int ) ;

__attribute__((used)) static int budget_patch_diseqc_send_burst(struct dvb_frontend* fe, fe_sec_mini_cmd_t minicmd)
{
 struct budget_patch* budget = (struct budget_patch*) fe->dvb->priv;

 av7110_send_diseqc_msg (budget, 0, ((void*)0), minicmd);

 return 0;
}
