
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocop_operation {int dummy; } ;


 int cryptocop_job_queue_insert (int ,struct cryptocop_operation*) ;
 int cryptocop_prio_user ;

int cryptocop_job_queue_insert_user_job(struct cryptocop_operation *operation)
{
 return cryptocop_job_queue_insert(cryptocop_prio_user, operation);
}
