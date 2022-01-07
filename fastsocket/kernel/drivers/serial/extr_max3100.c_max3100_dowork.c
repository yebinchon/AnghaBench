
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max3100_port {int work; int workqueue; int suspending; int force_end_work; } ;


 int current ;
 int freezing (int ) ;
 int queue_work (int ,int *) ;
 int work_pending (int *) ;

__attribute__((used)) static void max3100_dowork(struct max3100_port *s)
{
 if (!s->force_end_work && !work_pending(&s->work) &&
     !freezing(current) && !s->suspending)
  queue_work(s->workqueue, &s->work);
}
