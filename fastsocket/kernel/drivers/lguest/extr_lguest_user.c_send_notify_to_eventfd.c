
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lg_eventfd_map {unsigned int num; TYPE_2__* map; } ;
struct lg_cpu {scalar_t__ pending_notify; TYPE_1__* lg; } ;
struct TYPE_4__ {scalar_t__ addr; int event; } ;
struct TYPE_3__ {int eventfds; } ;


 int eventfd_signal (int ,int) ;
 struct lg_eventfd_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool send_notify_to_eventfd(struct lg_cpu *cpu)
{
 unsigned int i;
 struct lg_eventfd_map *map;







 rcu_read_lock();
 map = rcu_dereference(cpu->lg->eventfds);




 for (i = 0; i < map->num; i++) {
  if (map->map[i].addr == cpu->pending_notify) {
   eventfd_signal(map->map[i].event, 1);
   cpu->pending_notify = 0;
   break;
  }
 }

 rcu_read_unlock();


 return cpu->pending_notify == 0;
}
