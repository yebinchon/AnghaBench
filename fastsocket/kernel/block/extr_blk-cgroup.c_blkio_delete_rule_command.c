
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iops; int bps; int weight; } ;
struct blkio_policy_node {int plid; TYPE_1__ val; int fileid; } ;
 int BUG () ;

__attribute__((used)) static bool blkio_delete_rule_command(struct blkio_policy_node *pn)
{
 switch(pn->plid) {
 case 133:
  if (pn->val.weight == 0)
   return 1;
  break;
 case 132:
  switch(pn->fileid) {
  case 131:
  case 129:
   if (pn->val.bps == 0)
    return 1;
   break;
  case 130:
  case 128:
   if (pn->val.iops == 0)
    return 1;
  }
  break;
 default:
  BUG();
 }

 return 0;
}
