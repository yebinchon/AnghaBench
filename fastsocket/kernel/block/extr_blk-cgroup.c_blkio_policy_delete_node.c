
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkio_policy_node {int node; } ;


 int list_del (int *) ;

__attribute__((used)) static inline void blkio_policy_delete_node(struct blkio_policy_node *pn)
{
 list_del(&pn->node);
}
