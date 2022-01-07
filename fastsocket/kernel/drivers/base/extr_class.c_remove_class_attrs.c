
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int * class_attrs; } ;


 scalar_t__ attr_name (int ) ;
 int class_remove_file (struct class*,int *) ;

__attribute__((used)) static void remove_class_attrs(struct class *cls)
{
 int i;

 if (cls->class_attrs) {
  for (i = 0; attr_name(cls->class_attrs[i]); i++)
   class_remove_file(cls, &cls->class_attrs[i]);
 }
}
