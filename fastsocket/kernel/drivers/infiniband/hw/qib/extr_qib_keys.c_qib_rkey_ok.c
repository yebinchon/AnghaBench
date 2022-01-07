
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct qib_sge {int length; int sge_length; unsigned int m; unsigned int n; void* vaddr; struct qib_mregion* mr; } ;
struct TYPE_6__ {scalar_t__ pd; int device; } ;
struct qib_qp {TYPE_2__ ibqp; } ;
struct TYPE_5__ {int device; } ;
struct qib_pd {scalar_t__ user; TYPE_1__ ibpd; } ;
struct qib_mregion {int lkey; scalar_t__ pd; scalar_t__ iova; int length; int access_flags; int page_shift; TYPE_4__** map; scalar_t__ offset; int refcount; } ;
struct qib_lkey_table {int * table; } ;
struct qib_ibdev {int dma_mr; struct qib_lkey_table lk_table; } ;
struct TYPE_8__ {TYPE_3__* segs; } ;
struct TYPE_7__ {size_t length; void* vaddr; } ;


 size_t QIB_SEGSZ ;
 int atomic_inc_not_zero (int *) ;
 int ib_qib_lkey_table_size ;
 struct qib_mregion* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct qib_ibdev* to_idev (int ) ;
 struct qib_pd* to_ipd (scalar_t__) ;
 scalar_t__ unlikely (int) ;

int qib_rkey_ok(struct qib_qp *qp, struct qib_sge *sge,
  u32 len, u64 vaddr, u32 rkey, int acc)
{
 struct qib_lkey_table *rkt = &to_idev(qp->ibqp.device)->lk_table;
 struct qib_mregion *mr;
 unsigned n, m;
 size_t off;





 rcu_read_lock();
 if (rkey == 0) {
  struct qib_pd *pd = to_ipd(qp->ibqp.pd);
  struct qib_ibdev *dev = to_idev(pd->ibpd.device);

  if (pd->user)
   goto bail;
  mr = rcu_dereference(dev->dma_mr);
  if (!mr)
   goto bail;
  if (unlikely(!atomic_inc_not_zero(&mr->refcount)))
   goto bail;
  rcu_read_unlock();

  sge->mr = mr;
  sge->vaddr = (void *) vaddr;
  sge->length = len;
  sge->sge_length = len;
  sge->m = 0;
  sge->n = 0;
  goto ok;
 }

 mr = rcu_dereference(
  rkt->table[(rkey >> (32 - ib_qib_lkey_table_size))]);
 if (unlikely(!mr || mr->lkey != rkey || qp->ibqp.pd != mr->pd))
  goto bail;

 off = vaddr - mr->iova;
 if (unlikely(vaddr < mr->iova || off + len > mr->length ||
       (mr->access_flags & acc) == 0))
  goto bail;
 if (unlikely(!atomic_inc_not_zero(&mr->refcount)))
  goto bail;
 rcu_read_unlock();

 off += mr->offset;
 if (mr->page_shift) {





  size_t entries_spanned_by_off;

  entries_spanned_by_off = off >> mr->page_shift;
  off -= (entries_spanned_by_off << mr->page_shift);
  m = entries_spanned_by_off/QIB_SEGSZ;
  n = entries_spanned_by_off%QIB_SEGSZ;
 } else {
  m = 0;
  n = 0;
  while (off >= mr->map[m]->segs[n].length) {
   off -= mr->map[m]->segs[n].length;
   n++;
   if (n >= QIB_SEGSZ) {
    m++;
    n = 0;
   }
  }
 }
 sge->mr = mr;
 sge->vaddr = mr->map[m]->segs[n].vaddr + off;
 sge->length = mr->map[m]->segs[n].length - off;
 sge->sge_length = len;
 sge->m = m;
 sge->n = n;
ok:
 return 1;
bail:
 rcu_read_unlock();
 return 0;
}
