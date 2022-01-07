
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Fsm {scalar_t__ jumpmatrix; } ;


 int kfree (void*) ;

void
FsmFree(struct Fsm *fsm)
{
 kfree((void *) fsm->jumpmatrix);
}
