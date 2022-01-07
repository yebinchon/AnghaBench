
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iops; int bps; int weight; } ;
struct blkio_policy_node {int plid; TYPE_1__ val; int fileid; } ;
 int BUG () ;

__attribute__((used)) static void blkio_update_policy_rule(struct blkio_policy_node *oldpn,
     struct blkio_policy_node *newpn)
{
 switch(oldpn->plid) {
 case 133:
  oldpn->val.weight = newpn->val.weight;
  break;
 case 132:
  switch(newpn->fileid) {
  case 131:
  case 129:
   oldpn->val.bps = newpn->val.bps;
   break;
  case 130:
  case 128:
   oldpn->val.iops = newpn->val.iops;
  }
  break;
 default:
  BUG();
 }
}
