
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct qib_lkey_table {int lock; } ;
struct TYPE_7__ {int max_segs; int page_shift; int length; TYPE_2__** map; void* iova; void* user_base; int refcount; } ;
struct qib_fmr {TYPE_3__ mr; } ;
struct ib_fmr {int device; } ;
struct TYPE_8__ {struct qib_lkey_table lk_table; } ;
struct TYPE_6__ {TYPE_1__* segs; } ;
struct TYPE_5__ {int length; void* vaddr; } ;


 int EBUSY ;
 int EINVAL ;
 int QIB_SEGSZ ;
 int atomic_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_4__* to_idev (int ) ;
 struct qib_fmr* to_ifmr (struct ib_fmr*) ;

int qib_map_phys_fmr(struct ib_fmr *ibfmr, u64 *page_list,
       int list_len, u64 iova)
{
 struct qib_fmr *fmr = to_ifmr(ibfmr);
 struct qib_lkey_table *rkt;
 unsigned long flags;
 int m, n, i;
 u32 ps;
 int ret;

 i = atomic_read(&fmr->mr.refcount);
 if (i > 2)
  return -EBUSY;

 if (list_len > fmr->mr.max_segs) {
  ret = -EINVAL;
  goto bail;
 }
 rkt = &to_idev(ibfmr->device)->lk_table;
 spin_lock_irqsave(&rkt->lock, flags);
 fmr->mr.user_base = iova;
 fmr->mr.iova = iova;
 ps = 1 << fmr->mr.page_shift;
 fmr->mr.length = list_len * ps;
 m = 0;
 n = 0;
 for (i = 0; i < list_len; i++) {
  fmr->mr.map[m]->segs[n].vaddr = (void *) page_list[i];
  fmr->mr.map[m]->segs[n].length = ps;
  if (++n == QIB_SEGSZ) {
   m++;
   n = 0;
  }
 }
 spin_unlock_irqrestore(&rkt->lock, flags);
 ret = 0;

bail:
 return ret;
}
