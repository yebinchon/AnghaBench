
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_kobject {int kobj; scalar_t__ drivers_dir; } ;


 scalar_t__ kobject_create_and_add (char*,int *) ;

__attribute__((used)) static void module_create_drivers_dir(struct module_kobject *mk)
{
 if (!mk || mk->drivers_dir)
  return;

 mk->drivers_dir = kobject_create_and_add("drivers", &mk->kobj);
}
