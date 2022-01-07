
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int timer; } ;


 int CC_T302 ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int MT_SETUP_ACKNOWLEDGE ;
 int T302 ;
 int l3dss1_message (struct l3_process*,int ) ;
 int newl3state (struct l3_process*,int) ;

__attribute__((used)) static void
l3dss1_setup_ack_req(struct l3_process *pc, u_char pr,
     void *arg)
{
 newl3state(pc, 25);
 L3DelTimer(&pc->timer);
 L3AddTimer(&pc->timer, T302, CC_T302);
 l3dss1_message(pc, MT_SETUP_ACKNOWLEDGE);
}
