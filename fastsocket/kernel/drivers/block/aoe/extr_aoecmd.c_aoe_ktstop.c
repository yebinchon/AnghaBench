
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktstate {int rendez; int task; } ;


 int kthread_stop (int ) ;
 int wait_for_completion (int *) ;

void
aoe_ktstop(struct ktstate *k)
{
 kthread_stop(k->task);
 wait_for_completion(&k->rendez);
}
