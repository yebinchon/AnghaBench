
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int dummy; } ;
struct FsmInst {struct isac* userdata; } ;


 int D_L1L2 (struct isac*,int,int *) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int INDICATION ;
 int ISAC_CMD_DI ;
 int PH_DEACTIVATE ;
 int ST_L1_RESET ;
 int ph_command (struct isac*,int ) ;

__attribute__((used)) static void l1_di_deact_ind(struct FsmInst *fi, int event, void *arg)
{
 struct isac *isac = fi->userdata;

 FsmChangeState(fi, ST_L1_RESET);
 D_L1L2(isac, PH_DEACTIVATE | INDICATION, ((void*)0));
 ph_command(isac, ISAC_CMD_DI);
}
