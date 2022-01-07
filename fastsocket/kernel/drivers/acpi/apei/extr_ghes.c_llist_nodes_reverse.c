
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_node {struct llist_node* next; } ;



__attribute__((used)) static struct llist_node *llist_nodes_reverse(struct llist_node *llnode)
{
 struct llist_node *next, *tail = ((void*)0);

 while (llnode) {
  next = llnode->next;
  llnode->next = tail;
  tail = llnode;
  llnode = next;
 }

 return tail;
}
