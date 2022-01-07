
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {scalar_t__ cause; } ;
struct l3_process {scalar_t__ N303; TYPE_1__ para; int timer; } ;


 int L3DelTimer (int *) ;
 int l3_1tr6_disconnect_req (struct l3_process*,int ,int *) ;
 int l3_1tr6_setup_req (struct l3_process*,int ,void*) ;

__attribute__((used)) static void
l3_1tr6_t303(struct l3_process *pc, u_char pr, void *arg)
{
 if (pc->N303 > 0) {
  pc->N303--;
  L3DelTimer(&pc->timer);
  l3_1tr6_setup_req(pc, pr, arg);
 } else {
  L3DelTimer(&pc->timer);
  pc->para.cause = 0;
  l3_1tr6_disconnect_req(pc, 0, ((void*)0));
 }
}
