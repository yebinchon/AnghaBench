
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {int dummy; } ;
struct ib_cq {int device; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int lock; } ;


 int c2_poll_one (struct c2_dev*,struct c2_cq*,struct ib_wc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct c2_cq* to_c2cq (struct ib_cq*) ;
 struct c2_dev* to_c2dev (int ) ;

int c2_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *entry)
{
 struct c2_dev *c2dev = to_c2dev(ibcq->device);
 struct c2_cq *cq = to_c2cq(ibcq);
 unsigned long flags;
 int npolled, err;

 spin_lock_irqsave(&cq->lock, flags);

 for (npolled = 0; npolled < num_entries; ++npolled) {

  err = c2_poll_one(c2dev, cq, entry + npolled);
  if (err)
   break;
 }

 spin_unlock_irqrestore(&cq->lock, flags);

 return npolled;
}
