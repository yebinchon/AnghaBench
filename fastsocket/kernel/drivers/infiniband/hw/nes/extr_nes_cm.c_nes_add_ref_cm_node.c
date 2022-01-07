
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_node {int dummy; } ;


 int add_ref_cm_node (struct nes_cm_node*) ;

int nes_add_ref_cm_node(struct nes_cm_node *cm_node)
{
 return add_ref_cm_node(cm_node);
}
