
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* sibling; struct device_node* child; struct device_node* parent; struct device_node* allnext; } ;


 int OF_DETACHED ;
 struct device_node* allnodes ;
 int devtree_lock ;
 int of_node_set_flag (struct device_node*,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void of_detach_node(struct device_node *np)
{
 struct device_node *parent;
 unsigned long flags;

 write_lock_irqsave(&devtree_lock, flags);

 parent = np->parent;
 if (!parent)
  goto out_unlock;

 if (allnodes == np)
  allnodes = np->allnext;
 else {
  struct device_node *prev;
  for (prev = allnodes;
       prev->allnext != np;
       prev = prev->allnext)
   ;
  prev->allnext = np->allnext;
 }

 if (parent->child == np)
  parent->child = np->sibling;
 else {
  struct device_node *prevsib;
  for (prevsib = np->parent->child;
       prevsib->sibling != np;
       prevsib = prevsib->sibling)
   ;
  prevsib->sibling = np->sibling;
 }

 of_node_set_flag(np, OF_DETACHED);

out_unlock:
 write_unlock_irqrestore(&devtree_lock, flags);
}
