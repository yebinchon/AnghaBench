
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int timer; } ;


 int CC_T308_2 ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int MT_N1_REL ;
 int PROTO_DIS_N1 ;
 int T308 ;
 int l3_1TR6_message (struct l3_process*,int ,int ) ;
 int newl3state (struct l3_process*,int) ;

__attribute__((used)) static void
l3_1tr6_t308_1(struct l3_process *pc, u_char pr, void *arg)
{
 L3DelTimer(&pc->timer);
 l3_1TR6_message(pc, MT_N1_REL, PROTO_DIS_N1);
 L3AddTimer(&pc->timer, T308, CC_T308_2);
 newl3state(pc, 19);
}
