
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* action; } ;
struct TYPE_3__ {char* name; } ;


 TYPE_2__ on_halt_trigger ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t on_halt_show(struct kobject *kobj,
       struct kobj_attribute *attr, char *page)
{
 return sprintf(page, "%s\n", on_halt_trigger.action->name);
}
