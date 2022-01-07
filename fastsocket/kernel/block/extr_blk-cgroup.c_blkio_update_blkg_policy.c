
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {unsigned int weight; int bps; int iops; } ;
struct blkio_policy_node {int plid; int fileid; TYPE_1__ val; } ;
struct blkio_group {int dummy; } ;
struct blkio_cgroup {unsigned int weight; } ;
 int BUG () ;
 int blkio_update_group_bps (struct blkio_group*,int,int ) ;
 int blkio_update_group_iops (struct blkio_group*,unsigned int,int ) ;
 int blkio_update_group_weight (struct blkio_group*,unsigned int) ;

__attribute__((used)) static void blkio_update_blkg_policy(struct blkio_cgroup *blkcg,
  struct blkio_group *blkg, struct blkio_policy_node *pn)
{
 unsigned int weight, iops;
 u64 bps;

 switch(pn->plid) {
 case 133:
  weight = pn->val.weight ? pn->val.weight :
    blkcg->weight;
  blkio_update_group_weight(blkg, weight);
  break;
 case 132:
  switch(pn->fileid) {
  case 131:
  case 129:
   bps = pn->val.bps ? pn->val.bps : (-1);
   blkio_update_group_bps(blkg, bps, pn->fileid);
   break;
  case 130:
  case 128:
   iops = pn->val.iops ? pn->val.iops : (-1);
   blkio_update_group_iops(blkg, iops, pn->fileid);
   break;
  }
  break;
 default:
  BUG();
 }
}
