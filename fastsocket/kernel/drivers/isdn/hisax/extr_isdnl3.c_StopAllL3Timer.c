
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l3_process {int timer; } ;


 int L3DelTimer (int *) ;

void
StopAllL3Timer(struct l3_process *pc)
{
 L3DelTimer(&pc->timer);
}
