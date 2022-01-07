
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int timer; } ;
struct FsmInst {struct isac* userdata; } ;


 int EV_TIMER3 ;
 int FsmRestartTimer (int *,int ,int ,int *,int) ;
 int ISAC_CMD_AR8 ;
 int TIMER3_VALUE ;
 int ph_command (struct isac*,int ) ;

__attribute__((used)) static void l1_ar8(struct FsmInst *fi, int event, void *arg)
{
 struct isac *isac = fi->userdata;

 FsmRestartTimer(&isac->timer, TIMER3_VALUE, EV_TIMER3, ((void*)0), 2);
 ph_command(isac, ISAC_CMD_AR8);
}
