
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute_set {int group; } ;


 int destroy_attr_set (struct attribute_set*) ;
 int sysfs_remove_group (struct kobject*,int *) ;

__attribute__((used)) static void delete_attr_set(struct attribute_set *s, struct kobject *kobj)
{
 sysfs_remove_group(kobj, &s->group);
 destroy_attr_set(s);
}
