
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_child {unsigned long storeme; } ;
struct configfs_attribute {int dummy; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ERANGE ;
 unsigned long INT_MAX ;
 unsigned long simple_strtoul (char*,char**,int) ;
 struct simple_child* to_simple_child (struct config_item*) ;

__attribute__((used)) static ssize_t simple_child_attr_store(struct config_item *item,
           struct configfs_attribute *attr,
           const char *page, size_t count)
{
 struct simple_child *simple_child = to_simple_child(item);
 unsigned long tmp;
 char *p = (char *) page;

 tmp = simple_strtoul(p, &p, 10);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp > INT_MAX)
  return -ERANGE;

 simple_child->storeme = tmp;

 return count;
}
