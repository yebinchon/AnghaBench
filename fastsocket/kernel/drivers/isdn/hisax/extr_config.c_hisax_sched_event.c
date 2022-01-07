
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int tqueue; int event; } ;


 int schedule_work (int *) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static void hisax_sched_event(struct IsdnCardState *cs, int event)
{
 test_and_set_bit(event, &cs->event);
 schedule_work(&cs->tqueue);
}
