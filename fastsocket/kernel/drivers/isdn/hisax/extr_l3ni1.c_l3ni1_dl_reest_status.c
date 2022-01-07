
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int cause; } ;
struct l3_process {TYPE_1__ para; int timer; } ;


 int L3DelTimer (int *) ;
 int l3ni1_status_send (struct l3_process*,int ,int *) ;

__attribute__((used)) static void
l3ni1_dl_reest_status(struct l3_process *pc, u_char pr, void *arg)
{
 L3DelTimer(&pc->timer);

  pc->para.cause = 0x1F;
 l3ni1_status_send(pc, 0, ((void*)0));
}
