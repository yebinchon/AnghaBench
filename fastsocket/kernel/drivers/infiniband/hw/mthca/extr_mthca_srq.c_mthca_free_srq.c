
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int uobject; } ;
struct mthca_srq {int srqn; int db_index; TYPE_2__ ibsrq; int wait; int refcount; } ;
struct mthca_mailbox {int dummy; } ;
struct TYPE_6__ {int alloc; int table; int lock; int srq; } ;
struct TYPE_4__ {int num_srqs; } ;
struct mthca_dev {TYPE_3__ srq_table; TYPE_1__ limits; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_DB_TYPE_SRQ ;
 int get_srq_refcount (struct mthca_dev*,struct mthca_srq*) ;
 int mthca_HW2SW_SRQ (struct mthca_dev*,struct mthca_mailbox*,int) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_array_clear (int *,int) ;
 int mthca_free (int *,int) ;
 int mthca_free_db (struct mthca_dev*,int ,int ) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;
 int mthca_free_srq_buf (struct mthca_dev*,struct mthca_srq*) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mthca_table_put (struct mthca_dev*,int ,int) ;
 int mthca_warn (struct mthca_dev*,char*,...) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event (int ,int) ;

void mthca_free_srq(struct mthca_dev *dev, struct mthca_srq *srq)
{
 struct mthca_mailbox *mailbox;
 int err;

 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox)) {
  mthca_warn(dev, "No memory for mailbox to free SRQ.\n");
  return;
 }

 err = mthca_HW2SW_SRQ(dev, mailbox, srq->srqn);
 if (err)
  mthca_warn(dev, "HW2SW_SRQ failed (%d)\n", err);

 spin_lock_irq(&dev->srq_table.lock);
 mthca_array_clear(&dev->srq_table.srq,
     srq->srqn & (dev->limits.num_srqs - 1));
 --srq->refcount;
 spin_unlock_irq(&dev->srq_table.lock);

 wait_event(srq->wait, !get_srq_refcount(dev, srq));

 if (!srq->ibsrq.uobject) {
  mthca_free_srq_buf(dev, srq);
  if (mthca_is_memfree(dev))
   mthca_free_db(dev, MTHCA_DB_TYPE_SRQ, srq->db_index);
 }

 mthca_table_put(dev, dev->srq_table.table, srq->srqn);
 mthca_free(&dev->srq_table.alloc, srq->srqn);
 mthca_free_mailbox(dev, mailbox);
}
