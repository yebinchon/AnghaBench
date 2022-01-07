
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct capi_ctr {int nsentdatapkt; int nsentctlpkt; int nrecvdatapkt; int nrecvctlpkt; int cnr; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int contrstats_show(struct seq_file *seq, void *v)
{
 struct capi_ctr *ctr = *(struct capi_ctr **) v;

 if (!ctr)
  return 0;

 seq_printf(seq, "%d %lu %lu %lu %lu\n",
     ctr->cnr,
     ctr->nrecvctlpkt,
     ctr->nrecvdatapkt,
     ctr->nsentctlpkt,
     ctr->nsentdatapkt);

 return 0;
}
