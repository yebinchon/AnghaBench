
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pebs_tracer {int dummy; } ;


 int ds_free_pebs (struct pebs_tracer*) ;
 int ds_suspend_pebs (struct pebs_tracer*) ;
 int might_sleep () ;

void ds_release_pebs(struct pebs_tracer *tracer)
{
 might_sleep();

 if (!tracer)
  return;

 ds_suspend_pebs(tracer);
 ds_free_pebs(tracer);
}
