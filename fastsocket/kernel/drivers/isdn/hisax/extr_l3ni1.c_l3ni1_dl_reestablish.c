
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int st; int timer; } ;


 int CC_T309 ;
 int DL_ESTABLISH ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int REQUEST ;
 int T309 ;
 int l3_msg (int ,int,int *) ;

__attribute__((used)) static void
l3ni1_dl_reestablish(struct l3_process *pc, u_char pr, void *arg)
{
        L3DelTimer(&pc->timer);
        L3AddTimer(&pc->timer, T309, CC_T309);
        l3_msg(pc->st, DL_ESTABLISH | REQUEST, ((void*)0));
}
