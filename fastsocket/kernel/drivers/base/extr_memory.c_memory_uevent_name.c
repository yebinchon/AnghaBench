
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int dummy; } ;
struct kobject {int dummy; } ;


 char const* MEMORY_CLASS_NAME ;

__attribute__((used)) static const char *memory_uevent_name(struct kset *kset, struct kobject *kobj)
{
 return MEMORY_CLASS_NAME;
}
