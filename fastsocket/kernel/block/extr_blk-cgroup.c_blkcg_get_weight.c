
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int weight; } ;
struct blkio_policy_node {TYPE_1__ val; } ;
struct blkio_cgroup {unsigned int weight; } ;
typedef int dev_t ;


 int BLKIO_POLICY_PROP ;
 int BLKIO_PROP_weight_device ;
 struct blkio_policy_node* blkio_policy_search_node (struct blkio_cgroup*,int ,int ,int ) ;

unsigned int blkcg_get_weight(struct blkio_cgroup *blkcg,
         dev_t dev)
{
 struct blkio_policy_node *pn;

 pn = blkio_policy_search_node(blkcg, dev, BLKIO_POLICY_PROP,
    BLKIO_PROP_weight_device);
 if (pn)
  return pn->val.weight;
 else
  return blkcg->weight;
}
