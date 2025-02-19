
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int srq_context; int (* event_handler ) (struct ib_event*,int ) ;} ;
struct mthca_srq {int wait; int refcount; TYPE_3__ ibsrq; } ;
struct TYPE_8__ {int lock; int srq; } ;
struct TYPE_5__ {int num_srqs; } ;
struct mthca_dev {TYPE_4__ srq_table; int ib_dev; TYPE_1__ limits; } ;
struct TYPE_6__ {TYPE_3__* srq; } ;
struct ib_event {int event; TYPE_2__ element; int * device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 struct mthca_srq* mthca_array_get (int *,int) ;
 int mthca_warn (struct mthca_dev*,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ib_event*,int ) ;
 int wake_up (int *) ;

void mthca_srq_event(struct mthca_dev *dev, u32 srqn,
       enum ib_event_type event_type)
{
 struct mthca_srq *srq;
 struct ib_event event;

 spin_lock(&dev->srq_table.lock);
 srq = mthca_array_get(&dev->srq_table.srq, srqn & (dev->limits.num_srqs - 1));
 if (srq)
  ++srq->refcount;
 spin_unlock(&dev->srq_table.lock);

 if (!srq) {
  mthca_warn(dev, "Async event for bogus SRQ %08x\n", srqn);
  return;
 }

 if (!srq->ibsrq.event_handler)
  goto out;

 event.device = &dev->ib_dev;
 event.event = event_type;
 event.element.srq = &srq->ibsrq;
 srq->ibsrq.event_handler(&event, srq->ibsrq.srq_context);

out:
 spin_lock(&dev->srq_table.lock);
 if (!--srq->refcount)
  wake_up(&srq->wait);
 spin_unlock(&dev->srq_table.lock);
}
