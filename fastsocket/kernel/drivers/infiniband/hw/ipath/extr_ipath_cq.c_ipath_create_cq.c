
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipath_ibdev {scalar_t__ n_cqs_allocated; int pending_lock; int pending_mmaps; int n_cqs_lock; } ;
struct ipath_cq_wc {scalar_t__ tail; scalar_t__ head; } ;
struct ib_cq {int cqe; } ;
struct ipath_cq {struct ipath_cq* ip; struct ib_cq ibcq; struct ipath_cq_wc* queue; int comptask; int lock; scalar_t__ triggered; int notify; int pending_mmaps; int offset; } ;
struct ib_wc {int dummy; } ;
struct ib_uverbs_wc {int dummy; } ;
struct ib_udata {int outlen; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int __u64 ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_cq* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_CQ_NONE ;
 int ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int ib_ipath_max_cqes ;
 scalar_t__ ib_ipath_max_cqs ;
 struct ipath_cq* ipath_create_mmap_info (struct ipath_ibdev*,int,struct ib_ucontext*,struct ipath_cq_wc*) ;
 int kfree (struct ipath_cq*) ;
 struct ipath_cq* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int send_complete ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;
 int vfree (struct ipath_cq_wc*) ;
 struct ipath_cq_wc* vmalloc_user (int) ;

struct ib_cq *ipath_create_cq(struct ib_device *ibdev, int entries, int comp_vector,
         struct ib_ucontext *context,
         struct ib_udata *udata)
{
 struct ipath_ibdev *dev = to_idev(ibdev);
 struct ipath_cq *cq;
 struct ipath_cq_wc *wc;
 struct ib_cq *ret;
 u32 sz;

 if (entries < 1 || entries > ib_ipath_max_cqes) {
  ret = ERR_PTR(-EINVAL);
  goto done;
 }


 cq = kmalloc(sizeof(*cq), GFP_KERNEL);
 if (!cq) {
  ret = ERR_PTR(-ENOMEM);
  goto done;
 }
 sz = sizeof(*wc);
 if (udata && udata->outlen >= sizeof(__u64))
  sz += sizeof(struct ib_uverbs_wc) * (entries + 1);
 else
  sz += sizeof(struct ib_wc) * (entries + 1);
 wc = vmalloc_user(sz);
 if (!wc) {
  ret = ERR_PTR(-ENOMEM);
  goto bail_cq;
 }





 if (udata && udata->outlen >= sizeof(__u64)) {
  int err;

  cq->ip = ipath_create_mmap_info(dev, sz, context, wc);
  if (!cq->ip) {
   ret = ERR_PTR(-ENOMEM);
   goto bail_wc;
  }

  err = ib_copy_to_udata(udata, &cq->ip->offset,
           sizeof(cq->ip->offset));
  if (err) {
   ret = ERR_PTR(err);
   goto bail_ip;
  }
 } else
  cq->ip = ((void*)0);

 spin_lock(&dev->n_cqs_lock);
 if (dev->n_cqs_allocated == ib_ipath_max_cqs) {
  spin_unlock(&dev->n_cqs_lock);
  ret = ERR_PTR(-ENOMEM);
  goto bail_ip;
 }

 dev->n_cqs_allocated++;
 spin_unlock(&dev->n_cqs_lock);

 if (cq->ip) {
  spin_lock_irq(&dev->pending_lock);
  list_add(&cq->ip->pending_mmaps, &dev->pending_mmaps);
  spin_unlock_irq(&dev->pending_lock);
 }






 cq->ibcq.cqe = entries;
 cq->notify = IB_CQ_NONE;
 cq->triggered = 0;
 spin_lock_init(&cq->lock);
 tasklet_init(&cq->comptask, send_complete, (unsigned long)cq);
 wc->head = 0;
 wc->tail = 0;
 cq->queue = wc;

 ret = &cq->ibcq;

 goto done;

bail_ip:
 kfree(cq->ip);
bail_wc:
 vfree(wc);
bail_cq:
 kfree(cq);
done:
 return ret;
}
