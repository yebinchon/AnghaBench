
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct device_node {struct device_node* allnext; } ;


 struct device_node* allnodes ;
 int devtree_lock ;
 scalar_t__ of_match_node (struct of_device_id const*,struct device_node*) ;
 scalar_t__ of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct device_node *of_find_matching_node(struct device_node *from,
       const struct of_device_id *matches)
{
 struct device_node *np;

 read_lock(&devtree_lock);
 np = from ? from->allnext : allnodes;
 for (; np; np = np->allnext) {
  if (of_match_node(matches, np) && of_node_get(np))
   break;
 }
 of_node_put(from);
 read_unlock(&devtree_lock);
 return np;
}
