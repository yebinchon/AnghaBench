
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct attribute** attrs; } ;
struct attribute_set {size_t members; size_t max_members; TYPE_1__ group; } ;
struct attribute {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;

__attribute__((used)) static int add_to_attr_set(struct attribute_set *s, struct attribute *attr)
{
 if (!s || !attr)
  return -EINVAL;

 if (s->members >= s->max_members)
  return -ENOMEM;

 s->group.attrs[s->members] = attr;
 s->members++;

 return 0;
}
