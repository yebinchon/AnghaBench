
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attribute_set {int dummy; } ;
struct attribute {int dummy; } ;


 int add_to_attr_set (struct attribute_set*,struct attribute*) ;

__attribute__((used)) static int add_many_to_attr_set(struct attribute_set *s,
   struct attribute **attr,
   unsigned int count)
{
 int i, res;

 for (i = 0; i < count; i++) {
  res = add_to_attr_set(s, attr[i]);
  if (res)
   return res;
 }

 return 0;
}
