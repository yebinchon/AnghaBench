
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int timer; } ;
struct FsmInst {struct isac* userdata; } ;


 int D_L1L2 (struct isac*,int,int *) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int ) ;
 int INDICATION ;
 int ISAC_CMD_AR8 ;
 int PH_ACTIVATE ;
 int ST_L1_F7 ;
 int ph_command (struct isac*,int ) ;

__attribute__((used)) static void l1_go_f7_act_ind(struct FsmInst *fi, int event, void *arg)
{
 struct isac *isac = fi->userdata;

 FsmDelTimer(&isac->timer, 0);
 FsmChangeState(fi, ST_L1_F7);
 ph_command(isac, ISAC_CMD_AR8);
 D_L1L2(isac, PH_ACTIVATE | INDICATION, ((void*)0));
}
