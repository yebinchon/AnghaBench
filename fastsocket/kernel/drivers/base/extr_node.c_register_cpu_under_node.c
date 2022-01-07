
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sys_device {int kobj; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ sysdev; } ;


 struct sys_device* get_cpu_sysdev (unsigned int) ;
 int kobject_name (int *) ;
 TYPE_2__* node_devices ;
 int node_online (unsigned int) ;
 int sysfs_create_link (int *,int *,int ) ;

int register_cpu_under_node(unsigned int cpu, unsigned int nid)
{
 int ret;
 struct sys_device *obj;

 if (!node_online(nid))
  return 0;

 obj = get_cpu_sysdev(cpu);
 if (!obj)
  return 0;

 ret = sysfs_create_link(&node_devices[nid].sysdev.kobj,
    &obj->kobj,
    kobject_name(&obj->kobj));
 if (ret)
  return ret;

 return sysfs_create_link(&obj->kobj,
     &node_devices[nid].sysdev.kobj,
     kobject_name(&node_devices[nid].sysdev.kobj));
}
