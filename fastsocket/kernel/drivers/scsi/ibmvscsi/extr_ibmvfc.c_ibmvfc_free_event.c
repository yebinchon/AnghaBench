
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_event_pool {int dummy; } ;
struct ibmvfc_host {int free; struct ibmvfc_event_pool pool; } ;
struct ibmvfc_event {int queue; int free; struct ibmvfc_host* vhost; } ;


 int BUG_ON (int) ;
 int atomic_inc_return (int *) ;
 int ibmvfc_valid_event (struct ibmvfc_event_pool*,struct ibmvfc_event*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ibmvfc_free_event(struct ibmvfc_event *evt)
{
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_event_pool *pool = &vhost->pool;

 BUG_ON(!ibmvfc_valid_event(pool, evt));
 BUG_ON(atomic_inc_return(&evt->free) != 1);
 list_add_tail(&evt->queue, &vhost->free);
}
