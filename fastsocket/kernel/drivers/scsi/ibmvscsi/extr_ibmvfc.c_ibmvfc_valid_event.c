
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_event_pool {int size; struct ibmvfc_event* events; } ;
struct ibmvfc_event {int dummy; } ;



__attribute__((used)) static int ibmvfc_valid_event(struct ibmvfc_event_pool *pool,
         struct ibmvfc_event *evt)
{
 int index = evt - pool->events;
 if (index < 0 || index >= pool->size)
  return 0;
 if (evt != pool->events + index)
  return 0;
 return 1;
}
