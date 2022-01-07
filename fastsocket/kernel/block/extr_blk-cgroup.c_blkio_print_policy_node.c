
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int iops; int bps; int weight; } ;
struct blkio_policy_node {int plid; TYPE_1__ val; int dev; int fileid; } ;




 int BLKIO_PROP_weight_device ;




 int BUG () ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static void
blkio_print_policy_node(struct seq_file *m, struct blkio_policy_node *pn)
{
 switch(pn->plid) {
  case 133:
   if (pn->fileid == BLKIO_PROP_weight_device)
    seq_printf(m, "%u:%u\t%u\n", MAJOR(pn->dev),
     MINOR(pn->dev), pn->val.weight);
   break;
  case 132:
   switch(pn->fileid) {
   case 131:
   case 129:
    seq_printf(m, "%u:%u\t%llu\n", MAJOR(pn->dev),
     MINOR(pn->dev), pn->val.bps);
    break;
   case 130:
   case 128:
    seq_printf(m, "%u:%u\t%u\n", MAJOR(pn->dev),
     MINOR(pn->dev), pn->val.iops);
    break;
   }
   break;
  default:
   BUG();
 }
}
