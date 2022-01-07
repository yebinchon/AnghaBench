
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int dummy; } ;
struct FsmInst {struct isac* userdata; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int ISAC_CMD_DI ;
 int ST_L1_RESET ;
 int ph_command (struct isac*,int ) ;

__attribute__((used)) static void l1_di(struct FsmInst *fi, int event, void *arg)
{
 struct isac *isac = fi->userdata;

 FsmChangeState(fi, ST_L1_RESET);
 ph_command(isac, ISAC_CMD_DI);
}
