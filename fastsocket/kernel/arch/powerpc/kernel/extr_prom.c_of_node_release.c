
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* data; struct property* full_name; struct property* deadprops; struct property* value; struct property* name; struct property* next; int kref; struct property* properties; } ;
struct kref {int dummy; } ;
struct device_node {struct device_node* data; struct device_node* full_name; struct device_node* deadprops; struct device_node* value; struct device_node* name; struct device_node* next; int kref; struct device_node* properties; } ;


 int OF_DETACHED ;
 int OF_DYNAMIC ;
 int dump_stack () ;
 int kfree (struct property*) ;
 int kref_init (int *) ;
 struct property* kref_to_device_node (struct kref*) ;
 int of_node_check_flag (struct property*,int ) ;
 int printk (char*,struct property*) ;

__attribute__((used)) static void of_node_release(struct kref *kref)
{
 struct device_node *node = kref_to_device_node(kref);
 struct property *prop = node->properties;


 if (!of_node_check_flag(node, OF_DETACHED)) {
  printk("WARNING: Bad of_node_put() on %s\n", node->full_name);
  dump_stack();
  kref_init(&node->kref);
  return;
 }

 if (!of_node_check_flag(node, OF_DYNAMIC))
  return;

 while (prop) {
  struct property *next = prop->next;
  kfree(prop->name);
  kfree(prop->value);
  kfree(prop);
  prop = next;

  if (!prop) {
   prop = node->deadprops;
   node->deadprops = ((void*)0);
  }
 }
 kfree(node->full_name);
 kfree(node->data);
 kfree(node);
}
