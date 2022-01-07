
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; scalar_t__ data; int function; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 TYPE_1__ topology_timer ;
 int topology_timer_fn ;

__attribute__((used)) static void set_topology_timer(void)
{
 topology_timer.function = topology_timer_fn;
 topology_timer.data = 0;
 topology_timer.expires = jiffies + 60 * HZ;
 add_timer(&topology_timer);
}
