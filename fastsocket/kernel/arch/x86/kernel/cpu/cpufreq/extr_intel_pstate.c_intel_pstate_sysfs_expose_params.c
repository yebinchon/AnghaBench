
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ kset; } ;


 int BUG_ON (int) ;
 TYPE_2__ cpu_sysdev_class ;
 int intel_pstate_attr_group ;
 int intel_pstate_kobject ;
 int kobject_create_and_add (char*,int *) ;
 int sysfs_create_group (int ,int *) ;

__attribute__((used)) static void intel_pstate_sysfs_expose_params(void)
{
 int rc;

 intel_pstate_kobject = kobject_create_and_add("intel_pstate",
      &cpu_sysdev_class.kset.kobj);

 BUG_ON(!intel_pstate_kobject);
 rc = sysfs_create_group(intel_pstate_kobject,
    &intel_pstate_attr_group);
 BUG_ON(rc);
}
