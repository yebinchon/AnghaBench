
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkio_policy_node {int node; } ;
struct blkio_cgroup {int policy_list; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static inline void blkio_policy_insert_node(struct blkio_cgroup *blkcg,
         struct blkio_policy_node *pn)
{
 list_add(&pn->node, &blkcg->policy_list);
}
