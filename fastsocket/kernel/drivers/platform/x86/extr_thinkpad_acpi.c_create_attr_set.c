
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int * attrs; } ;
struct attribute_set {unsigned int max_members; TYPE_1__ group; } ;
struct attribute_set_obj {struct attribute_set s; int a; } ;
struct attribute {int dummy; } ;


 int GFP_KERNEL ;
 struct attribute_set_obj* kzalloc (int,int ) ;

__attribute__((used)) static struct attribute_set *create_attr_set(unsigned int max_members,
      const char *name)
{
 struct attribute_set_obj *sobj;

 if (max_members == 0)
  return ((void*)0);


 sobj = kzalloc(sizeof(struct attribute_set_obj) +
      max_members * sizeof(struct attribute *),
      GFP_KERNEL);
 if (!sobj)
  return ((void*)0);
 sobj->s.max_members = max_members;
 sobj->s.group.attrs = &sobj->a;
 sobj->s.group.name = name;

 return &sobj->s;
}
