
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int * kset; } ;
struct device {TYPE_2__* class; } ;
struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {int class_dirs; } ;


 int kobject_put (struct kobject*) ;

__attribute__((used)) static void cleanup_glue_dir(struct device *dev, struct kobject *glue_dir)
{

 if (!glue_dir || !dev->class ||
     glue_dir->kset != &dev->class->p->class_dirs)
  return;

 kobject_put(glue_dir);
}
