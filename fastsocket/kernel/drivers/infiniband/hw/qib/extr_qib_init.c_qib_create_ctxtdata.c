
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int rcvegrbufsize; int (* f_init_ctxt ) (struct qib_ctxtdata*) ;struct qib_ctxtdata** rcd; } ;
struct qib_ctxtdata {int cnt; size_t ctxt; int rcvegrbuf_size; int rcvegrbufs_perchunk; int rcvegrbuf_chunks; int rcvegrcnt; int rcvegrbufs_perchunk_shift; struct qib_devdata* dd; struct qib_pportdata* ppd; int qp_wait_list; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ilog2 (int) ;
 int is_power_of_2 (int) ;
 struct qib_ctxtdata* kzalloc (int,int ) ;
 int stub1 (struct qib_ctxtdata*) ;

struct qib_ctxtdata *qib_create_ctxtdata(struct qib_pportdata *ppd, u32 ctxt)
{
 struct qib_devdata *dd = ppd->dd;
 struct qib_ctxtdata *rcd;

 rcd = kzalloc(sizeof(*rcd), GFP_KERNEL);
 if (rcd) {
  INIT_LIST_HEAD(&rcd->qp_wait_list);
  rcd->ppd = ppd;
  rcd->dd = dd;
  rcd->cnt = 1;
  rcd->ctxt = ctxt;
  dd->rcd[ctxt] = rcd;

  dd->f_init_ctxt(rcd);
  rcd->rcvegrbuf_size = 0x8000;
  rcd->rcvegrbufs_perchunk =
   rcd->rcvegrbuf_size / dd->rcvegrbufsize;
  rcd->rcvegrbuf_chunks = (rcd->rcvegrcnt +
   rcd->rcvegrbufs_perchunk - 1) /
   rcd->rcvegrbufs_perchunk;
  BUG_ON(!is_power_of_2(rcd->rcvegrbufs_perchunk));
  rcd->rcvegrbufs_perchunk_shift =
   ilog2(rcd->rcvegrbufs_perchunk);
 }
 return rcd;
}
