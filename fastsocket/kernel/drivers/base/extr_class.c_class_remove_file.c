
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct class_attribute {int attr; } ;
struct class {TYPE_2__* p; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ class_subsys; } ;


 int sysfs_remove_file (int *,int *) ;

void class_remove_file(struct class *cls, const struct class_attribute *attr)
{
 if (cls)
  sysfs_remove_file(&cls->p->class_subsys.kobj, &attr->attr);
}
