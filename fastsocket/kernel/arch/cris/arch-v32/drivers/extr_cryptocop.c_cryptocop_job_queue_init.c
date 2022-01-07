
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ cryptocop_queue_priority ;
struct TYPE_2__ {int jobs; scalar_t__ prio; } ;


 int INIT_LIST_HEAD (int *) ;
 int cryptocop_completed_jobs ;
 TYPE_1__* cryptocop_job_queues ;
 int cryptocop_prio_no_prios ;

__attribute__((used)) static int cryptocop_job_queue_init(void)
{
 int i;

 INIT_LIST_HEAD(&cryptocop_completed_jobs);

 for (i = 0; i < cryptocop_prio_no_prios; i++){
  cryptocop_job_queues[i].prio = (cryptocop_queue_priority)i;
  INIT_LIST_HEAD(&cryptocop_job_queues[i].jobs);
 }
 return 0;
}
