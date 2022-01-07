
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int iops; } ;
struct blkio_policy_node {TYPE_1__ val; } ;
struct blkio_cgroup {int dummy; } ;
typedef int dev_t ;


 int BLKIO_POLICY_THROTL ;
 int BLKIO_THROTL_read_iops_device ;
 struct blkio_policy_node* blkio_policy_search_node (struct blkio_cgroup*,int ,int ,int ) ;

unsigned int blkcg_get_read_iops(struct blkio_cgroup *blkcg, dev_t dev)
{
 struct blkio_policy_node *pn;

 pn = blkio_policy_search_node(blkcg, dev, BLKIO_POLICY_THROTL,
    BLKIO_THROTL_read_iops_device);
 if (pn)
  return pn->val.iops;
 else
  return -1;
}
