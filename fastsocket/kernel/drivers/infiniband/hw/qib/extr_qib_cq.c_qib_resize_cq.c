
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_mmap_info {int pending_mmaps; int offset; } ;
struct qib_ibdev {int pending_lock; int pending_mmaps; } ;
struct qib_cq_wc {int head; int tail; int * kqueue; int * uqueue; } ;
struct TYPE_2__ {int cqe; } ;
struct qib_cq {int lock; struct qib_mmap_info* ip; struct qib_cq_wc* queue; TYPE_1__ ibcq; } ;
struct ib_wc {int dummy; } ;
struct ib_uverbs_wc {int dummy; } ;
struct ib_udata {int outlen; } ;
struct ib_cq {int device; } ;
typedef int offset ;
typedef int __u64 ;


 int EINVAL ;
 int ENOMEM ;
 int ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int ib_qib_max_cqes ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int qib_update_mmap_info (struct qib_ibdev*,struct qib_mmap_info*,int,struct qib_cq_wc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct qib_cq* to_icq (struct ib_cq*) ;
 struct qib_ibdev* to_idev (int ) ;
 scalar_t__ unlikely (int) ;
 int vfree (struct qib_cq_wc*) ;
 struct qib_cq_wc* vmalloc_user (int) ;

int qib_resize_cq(struct ib_cq *ibcq, int cqe, struct ib_udata *udata)
{
 struct qib_cq *cq = to_icq(ibcq);
 struct qib_cq_wc *old_wc;
 struct qib_cq_wc *wc;
 u32 head, tail, n;
 int ret;
 u32 sz;

 if (cqe < 1 || cqe > ib_qib_max_cqes) {
  ret = -EINVAL;
  goto bail;
 }




 sz = sizeof(*wc);
 if (udata && udata->outlen >= sizeof(__u64))
  sz += sizeof(struct ib_uverbs_wc) * (cqe + 1);
 else
  sz += sizeof(struct ib_wc) * (cqe + 1);
 wc = vmalloc_user(sz);
 if (!wc) {
  ret = -ENOMEM;
  goto bail;
 }


 if (udata && udata->outlen >= sizeof(__u64)) {
  __u64 offset = 0;

  ret = ib_copy_to_udata(udata, &offset, sizeof(offset));
  if (ret)
   goto bail_free;
 }

 spin_lock_irq(&cq->lock);




 old_wc = cq->queue;
 head = old_wc->head;
 if (head > (u32) cq->ibcq.cqe)
  head = (u32) cq->ibcq.cqe;
 tail = old_wc->tail;
 if (tail > (u32) cq->ibcq.cqe)
  tail = (u32) cq->ibcq.cqe;
 if (head < tail)
  n = cq->ibcq.cqe + 1 + head - tail;
 else
  n = head - tail;
 if (unlikely((u32)cqe < n)) {
  ret = -EINVAL;
  goto bail_unlock;
 }
 for (n = 0; tail != head; n++) {
  if (cq->ip)
   wc->uqueue[n] = old_wc->uqueue[tail];
  else
   wc->kqueue[n] = old_wc->kqueue[tail];
  if (tail == (u32) cq->ibcq.cqe)
   tail = 0;
  else
   tail++;
 }
 cq->ibcq.cqe = cqe;
 wc->head = n;
 wc->tail = 0;
 cq->queue = wc;
 spin_unlock_irq(&cq->lock);

 vfree(old_wc);

 if (cq->ip) {
  struct qib_ibdev *dev = to_idev(ibcq->device);
  struct qib_mmap_info *ip = cq->ip;

  qib_update_mmap_info(dev, ip, sz, wc);





  if (udata && udata->outlen >= sizeof(__u64)) {
   ret = ib_copy_to_udata(udata, &ip->offset,
            sizeof(ip->offset));
   if (ret)
    goto bail;
  }

  spin_lock_irq(&dev->pending_lock);
  if (list_empty(&ip->pending_mmaps))
   list_add(&ip->pending_mmaps, &dev->pending_mmaps);
  spin_unlock_irq(&dev->pending_lock);
 }

 ret = 0;
 goto bail;

bail_unlock:
 spin_unlock_irq(&cq->lock);
bail_free:
 vfree(wc);
bail:
 return ret;
}
