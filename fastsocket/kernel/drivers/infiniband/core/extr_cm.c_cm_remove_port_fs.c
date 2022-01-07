
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cm_port {int port_obj; TYPE_1__* counter_group; } ;
struct TYPE_2__ {int obj; } ;


 int CM_COUNTER_GROUPS ;
 int kobject_put (int *) ;

__attribute__((used)) static void cm_remove_port_fs(struct cm_port *port)
{
 int i;

 for (i = 0; i < CM_COUNTER_GROUPS; i++)
  kobject_put(&port->counter_group[i].obj);

 kobject_put(&port->port_obj);
}
