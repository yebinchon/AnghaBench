
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_type {int dummy; } ;


 struct kobj_type bus_ktype ;
 struct kobj_type* get_ktype (struct kobject*) ;

__attribute__((used)) static int bus_uevent_filter(struct kset *kset, struct kobject *kobj)
{
 struct kobj_type *ktype = get_ktype(kobj);

 if (ktype == &bus_ktype)
  return 1;
 return 0;
}
