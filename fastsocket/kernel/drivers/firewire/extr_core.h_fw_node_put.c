
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_node {int ref_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct fw_node*) ;

__attribute__((used)) static inline void fw_node_put(struct fw_node *node)
{
 if (atomic_dec_and_test(&node->ref_count))
  kfree(node);
}
