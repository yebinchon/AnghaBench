
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; } ;
struct device_node {scalar_t__ pde; struct property* deadprops; struct property* properties; } ;


 int ENODEV ;
 int devtree_lock ;
 int proc_device_tree_update_prop (scalar_t__,struct property*,struct property*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int prom_update_property(struct device_node *np,
    struct property *newprop,
    struct property *oldprop)
{
 struct property **next;
 unsigned long flags;
 int found = 0;

 write_lock_irqsave(&devtree_lock, flags);
 next = &np->properties;
 while (*next) {
  if (*next == oldprop) {

   newprop->next = oldprop->next;
   *next = newprop;
   oldprop->next = np->deadprops;
   np->deadprops = oldprop;
   found = 1;
   break;
  }
  next = &(*next)->next;
 }
 write_unlock_irqrestore(&devtree_lock, flags);

 if (!found)
  return -ENODEV;







 return 0;
}
