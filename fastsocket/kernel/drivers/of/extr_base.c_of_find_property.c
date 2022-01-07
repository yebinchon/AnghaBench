
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; int name; struct property* next; } ;
struct device_node {struct property* properties; } ;


 int devtree_lock ;
 scalar_t__ of_prop_cmp (int ,char const*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct property *of_find_property(const struct device_node *np,
      const char *name,
      int *lenp)
{
 struct property *pp;

 if (!np)
  return ((void*)0);

 read_lock(&devtree_lock);
 for (pp = np->properties; pp != 0; pp = pp->next) {
  if (of_prop_cmp(pp->name, name) == 0) {
   if (lenp != 0)
    *lenp = pp->length;
   break;
  }
 }
 read_unlock(&devtree_lock);

 return pp;
}
