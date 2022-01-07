
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BCState {int tqueue; int event; } ;


 int schedule_work (int *) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static void hisax_b_sched_event(struct BCState *bcs, int event)
{
 test_and_set_bit(event, &bcs->event);
 schedule_work(&bcs->tqueue);
}
