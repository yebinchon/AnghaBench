
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* sibling; struct device_node* child; } ;


 int dlpar_free_one_cc_node (struct device_node*) ;

__attribute__((used)) static void dlpar_free_cc_nodes(struct device_node *dn)
{
 if (dn->child)
  dlpar_free_cc_nodes(dn->child);

 if (dn->sibling)
  dlpar_free_cc_nodes(dn->sibling);

 dlpar_free_one_cc_node(dn);
}
