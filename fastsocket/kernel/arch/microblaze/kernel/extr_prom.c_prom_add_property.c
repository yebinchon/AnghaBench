
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; int name; } ;
struct device_node {scalar_t__ pde; struct property* properties; } ;


 int devtree_lock ;
 int proc_device_tree_add_prop (scalar_t__,struct property*) ;
 scalar_t__ strcmp (int ,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int prom_add_property(struct device_node *np, struct property *prop)
{
 struct property **next;
 unsigned long flags;

 prop->next = ((void*)0);
 write_lock_irqsave(&devtree_lock, flags);
 next = &np->properties;
 while (*next) {
  if (strcmp(prop->name, (*next)->name) == 0) {

   write_unlock_irqrestore(&devtree_lock, flags);
   return -1;
  }
  next = &(*next)->next;
 }
 *next = prop;
 write_unlock_irqrestore(&devtree_lock, flags);







 return 0;
}
