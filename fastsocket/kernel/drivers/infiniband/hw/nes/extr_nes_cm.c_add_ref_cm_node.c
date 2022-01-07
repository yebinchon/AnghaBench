
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_node {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static int add_ref_cm_node(struct nes_cm_node *cm_node)
{
 atomic_inc(&cm_node->ref_count);
 return 0;
}
