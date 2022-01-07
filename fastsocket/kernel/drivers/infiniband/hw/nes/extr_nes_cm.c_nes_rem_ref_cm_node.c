
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_node {int cm_core; } ;


 int rem_ref_cm_node (int ,struct nes_cm_node*) ;

int nes_rem_ref_cm_node(struct nes_cm_node *cm_node)
{
 return rem_ref_cm_node(cm_node->cm_core, cm_node);
}
