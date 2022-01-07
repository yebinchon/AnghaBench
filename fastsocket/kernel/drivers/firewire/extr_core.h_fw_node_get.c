
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_node {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct fw_node *fw_node_get(struct fw_node *node)
{
 atomic_inc(&node->ref_count);

 return node;
}
