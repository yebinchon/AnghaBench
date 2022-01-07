
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_event_struct {TYPE_1__* hostdata; int free; } ;
struct event_pool {int events; } ;
struct TYPE_2__ {int dev; } ;


 int atomic_inc_return (int *) ;
 int dev_err (int ,char*,struct srp_event_struct*,...) ;
 int valid_event_struct (struct event_pool*,struct srp_event_struct*) ;

__attribute__((used)) static void free_event_struct(struct event_pool *pool,
           struct srp_event_struct *evt)
{
 if (!valid_event_struct(pool, evt)) {
  dev_err(evt->hostdata->dev, "Freeing invalid event_struct %p "
   "(not in pool %p)\n", evt, pool->events);
  return;
 }
 if (atomic_inc_return(&evt->free) != 1) {
  dev_err(evt->hostdata->dev, "Freeing event_struct %p "
   "which is not in use!\n", evt);
  return;
 }
}
