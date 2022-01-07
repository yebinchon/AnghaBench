
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; struct property* next; } ;
struct device_node {struct property* properties; struct device_node* allnext; } ;


 struct device_node* allnodes ;
 int devtree_lock ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_prop_cmp (int ,char const*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_find_node_with_property(struct device_node *from,
 const char *prop_name)
{
 struct device_node *np;
 struct property *pp;

 read_lock(&devtree_lock);
 np = from ? from->allnext : allnodes;
 for (; np; np = np->allnext) {
  for (pp = np->properties; pp != 0; pp = pp->next) {
   if (of_prop_cmp(pp->name, prop_name) == 0) {
    of_node_get(np);
    goto out;
   }
  }
 }
out:
 of_node_put(from);
 read_unlock(&devtree_lock);
 return np;
}
