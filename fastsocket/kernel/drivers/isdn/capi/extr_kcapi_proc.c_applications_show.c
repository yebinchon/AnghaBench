
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int datablklen; int datablkcnt; int level3cnt; } ;
struct capi20_appl {TYPE_1__ rparam; int applid; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int
applications_show(struct seq_file *seq, void *v)
{
 struct capi20_appl *ap = *(struct capi20_appl **) v;

 if (!ap)
  return 0;

 seq_printf(seq, "%u %d %d %d\n",
     ap->applid,
     ap->rparam.level3cnt,
     ap->rparam.datablkcnt,
     ap->rparam.datablklen);

 return 0;
}
