
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int bps; } ;
struct blkio_policy_node {TYPE_1__ val; } ;
struct blkio_cgroup {int dummy; } ;
typedef int dev_t ;


 int BLKIO_POLICY_THROTL ;
 int BLKIO_THROTL_read_bps_device ;
 struct blkio_policy_node* blkio_policy_search_node (struct blkio_cgroup*,int ,int ,int ) ;

uint64_t blkcg_get_read_bps(struct blkio_cgroup *blkcg, dev_t dev)
{
 struct blkio_policy_node *pn;

 pn = blkio_policy_search_node(blkcg, dev, BLKIO_POLICY_THROTL,
    BLKIO_THROTL_read_bps_device);
 if (pn)
  return pn->val.bps;
 else
  return -1;
}
