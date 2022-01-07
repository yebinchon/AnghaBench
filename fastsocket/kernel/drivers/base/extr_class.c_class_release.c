
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct class_private {struct class* class; } ;
struct class {int name; int (* class_release ) (struct class*) ;} ;


 int kfree (struct class_private*) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct class*) ;
 struct class_private* to_class (struct kobject*) ;

__attribute__((used)) static void class_release(struct kobject *kobj)
{
 struct class_private *cp = to_class(kobj);
 struct class *class = cp->class;

 pr_debug("class '%s': release.\n", class->name);

 if (class->class_release)
  class->class_release(class);
 else
  pr_debug("class '%s' does not have a release() function, "
    "be careful\n", class->name);

 kfree(cp);
}
