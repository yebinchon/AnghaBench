
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int * class_attrs; } ;


 scalar_t__ attr_name (int ) ;
 int class_create_file (struct class*,int *) ;
 int class_remove_file (struct class*,int *) ;

__attribute__((used)) static int add_class_attrs(struct class *cls)
{
 int i;
 int error = 0;

 if (cls->class_attrs) {
  for (i = 0; attr_name(cls->class_attrs[i]); i++) {
   error = class_create_file(cls, &cls->class_attrs[i]);
   if (error)
    goto error;
  }
 }
done:
 return error;
error:
 while (--i >= 0)
  class_remove_file(cls, &cls->class_attrs[i]);
 goto done;
}
