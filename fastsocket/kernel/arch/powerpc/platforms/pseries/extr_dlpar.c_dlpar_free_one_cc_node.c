
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; } ;
struct device_node {struct device_node* full_name; struct property* properties; } ;


 int dlpar_free_cc_property (struct property*) ;
 int kfree (struct device_node*) ;

__attribute__((used)) static void dlpar_free_one_cc_node(struct device_node *dn)
{
 struct property *prop;

 while (dn->properties) {
  prop = dn->properties;
  dn->properties = prop->next;
  dlpar_free_cc_property(prop);
 }

 kfree(dn->full_name);
 kfree(dn);
}
