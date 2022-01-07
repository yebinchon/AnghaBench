
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int * parent; } ;



__attribute__((used)) static inline int is_root_node(const struct device_node *dp)
{
 if (!dp)
  return 0;

 return (dp->parent == ((void*)0));
}
