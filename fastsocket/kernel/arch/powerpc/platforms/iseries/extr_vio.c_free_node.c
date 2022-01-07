
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; } ;
struct device_node {struct device_node* full_name; int parent; struct property* properties; } ;


 int free_property (struct property*) ;
 int kfree (struct device_node*) ;
 int of_node_put (int ) ;

__attribute__((used)) static void free_node(struct device_node *np)
{
 struct property *next;
 struct property *prop;

 next = np->properties;
 while (next) {
  prop = next;
  next = prop->next;
  free_property(prop);
 }
 of_node_put(np->parent);
 kfree(np->full_name);
 kfree(np);
}
