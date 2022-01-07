
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bts_tracer {int dummy; } ;


 int ds_free_bts (struct bts_tracer*) ;
 int ds_suspend_bts (struct bts_tracer*) ;
 int might_sleep () ;

void ds_release_bts(struct bts_tracer *tracer)
{
 might_sleep();

 if (!tracer)
  return;

 ds_suspend_bts(tracer);
 ds_free_bts(tracer);
}
