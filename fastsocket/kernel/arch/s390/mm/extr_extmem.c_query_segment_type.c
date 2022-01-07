
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrange {int dummy; } ;
struct qout64_old {unsigned long qoutptr; int qoutlen; unsigned long segstart; unsigned long segend; int segcnt; int segrcnt; unsigned long start; unsigned long end; struct qout64_old* range; struct qout64_old* qname; int qopcode; } ;
struct qout64 {unsigned long qoutptr; int qoutlen; unsigned long segstart; unsigned long segend; int segcnt; int segrcnt; unsigned long start; unsigned long end; struct qout64* range; struct qout64* qname; int qopcode; } ;
struct qin64 {unsigned long qoutptr; int qoutlen; unsigned long segstart; unsigned long segend; int segcnt; int segrcnt; unsigned long start; unsigned long end; struct qin64* range; struct qin64* qname; int qopcode; } ;
struct dcss_segment {int vm_segtype; int start_addr; unsigned long end; int segcnt; struct qout64_old* range; struct qout64_old* dcss_name; } ;


 int DCSS_FINDSEGA ;
 scalar_t__ DCSS_SEGEXT ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_DMA ;
 int PAGE_SHIFT ;
 int SEG_TYPE_EN ;
 int SEG_TYPE_EW ;
 int SEG_TYPE_EWEN ;
 int dcss_diag (scalar_t__*,struct qout64_old*,unsigned long*,unsigned long*) ;
 int dcss_diag_translate_rc (unsigned long) ;
 int kfree (struct qout64_old*) ;
 struct qout64_old* kmalloc (int,int ) ;
 struct qout64_old* kzalloc (int,int ) ;
 int memcpy (struct qout64_old*,struct qout64_old*,int) ;
 int pr_warning (char*,unsigned long) ;
 scalar_t__ segext_scode ;

__attribute__((used)) static int
query_segment_type (struct dcss_segment *seg)
{
 struct qin64 *qin = kmalloc (sizeof(struct qin64), GFP_DMA);
 struct qout64 *qout = kmalloc (sizeof(struct qout64), GFP_DMA);

 int diag_cc, rc, i;
 unsigned long dummy, vmrc;

 if ((qin == ((void*)0)) || (qout == ((void*)0))) {
  rc = -ENOMEM;
  goto out_free;
 }


 qin->qopcode = DCSS_FINDSEGA;
 qin->qoutptr = (unsigned long) qout;
 qin->qoutlen = sizeof(struct qout64);
 memcpy (qin->qname, seg->dcss_name, 8);

 diag_cc = dcss_diag(&segext_scode, qin, &dummy, &vmrc);

 if (diag_cc < 0) {
  rc = diag_cc;
  goto out_free;
 }
 if (diag_cc > 1) {
  pr_warning("Querying a DCSS type failed with rc=%ld\n", vmrc);
  rc = dcss_diag_translate_rc (vmrc);
  goto out_free;
 }
 if (qout->segcnt > 6) {
  rc = -ENOTSUPP;
  goto out_free;
 }

 if (qout->segcnt == 1) {
  seg->vm_segtype = qout->range[0].start & 0xff;
 } else {




  unsigned long start = qout->segstart >> PAGE_SHIFT;
  for (i=0; i<qout->segcnt; i++) {
   if (((qout->range[i].start & 0xff) != SEG_TYPE_EW) &&
       ((qout->range[i].start & 0xff) != SEG_TYPE_EN)) {
    rc = -ENOTSUPP;
    goto out_free;
   }
   if (start != qout->range[i].start >> PAGE_SHIFT) {
    rc = -ENOTSUPP;
    goto out_free;
   }
   start = (qout->range[i].end >> PAGE_SHIFT) + 1;
  }
  seg->vm_segtype = SEG_TYPE_EWEN;
 }


 seg->start_addr = qout->segstart;
 seg->end = qout->segend;

 memcpy (seg->range, qout->range, 6*sizeof(struct qrange));
 seg->segcnt = qout->segcnt;

 rc = 0;

 out_free:
 kfree(qin);
 kfree(qout);
 return rc;
}
