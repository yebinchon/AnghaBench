
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {TYPE_1__* parent; struct device_node* allnext; struct device_node* sibling; } ;
struct TYPE_2__ {struct device_node* child; } ;


 struct device_node* allnodes ;
 int devtree_lock ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void of_attach_node(struct device_node *np)
{
 unsigned long flags;

 write_lock_irqsave(&devtree_lock, flags);
 np->sibling = np->parent->child;
 np->allnext = allnodes;
 np->parent->child = np;
 allnodes = np;
 write_unlock_irqrestore(&devtree_lock, flags);
}
