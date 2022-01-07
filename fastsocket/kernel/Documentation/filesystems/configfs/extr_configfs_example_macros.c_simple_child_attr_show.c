
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_child {int storeme; } ;
struct configfs_attribute {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct simple_child* to_simple_child (struct config_item*) ;

__attribute__((used)) static ssize_t simple_child_attr_show(struct config_item *item,
          struct configfs_attribute *attr,
          char *page)
{
 ssize_t count;
 struct simple_child *simple_child = to_simple_child(item);

 count = sprintf(page, "%d\n", simple_child->storeme);

 return count;
}
