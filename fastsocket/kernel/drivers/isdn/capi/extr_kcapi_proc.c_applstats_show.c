
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct capi20_appl {int nsentdatapkt; int nsentctlpkt; int nrecvdatapkt; int nrecvctlpkt; int applid; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
applstats_show(struct seq_file *seq, void *v)
{
 struct capi20_appl *ap = *(struct capi20_appl **) v;

 if (!ap)
  return 0;

 seq_printf(seq, "%u %lu %lu %lu %lu\n",
     ap->applid,
     ap->nrecvctlpkt,
     ap->nrecvdatapkt,
     ap->nsentctlpkt,
     ap->nsentdatapkt);

 return 0;
}
