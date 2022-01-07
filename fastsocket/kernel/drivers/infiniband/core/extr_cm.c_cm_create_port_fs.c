
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cm_port {int port_obj; TYPE_3__* counter_group; int port_num; TYPE_2__* cm_dev; } ;
struct TYPE_6__ {int obj; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int kobj; } ;


 int CM_COUNTER_GROUPS ;
 int cm_counter_obj_type ;
 int cm_port_obj_type ;
 int * counter_group_names ;
 int kfree (struct cm_port*) ;
 int kobject_init_and_add (int *,int *,int *,char*,int ) ;
 int kobject_put (int *) ;

__attribute__((used)) static int cm_create_port_fs(struct cm_port *port)
{
 int i, ret;

 ret = kobject_init_and_add(&port->port_obj, &cm_port_obj_type,
       &port->cm_dev->device->kobj,
       "%d", port->port_num);
 if (ret) {
  kfree(port);
  return ret;
 }

 for (i = 0; i < CM_COUNTER_GROUPS; i++) {
  ret = kobject_init_and_add(&port->counter_group[i].obj,
        &cm_counter_obj_type,
        &port->port_obj,
        "%s", counter_group_names[i]);
  if (ret)
   goto error;
 }

 return 0;

error:
 while (i--)
  kobject_put(&port->counter_group[i].obj);
 kobject_put(&port->port_obj);
 return ret;

}
