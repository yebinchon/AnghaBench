
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int num_cqs; } ;
struct TYPE_4__ {int cq; } ;
struct mthca_dev {TYPE_2__ limits; TYPE_1__ cq_table; } ;
struct TYPE_6__ {int cq_context; int (* comp_handler ) (TYPE_3__*,int ) ;} ;
struct mthca_cq {TYPE_3__ ibcq; int arm_sn; } ;


 struct mthca_cq* mthca_array_get (int *,int) ;
 int mthca_warn (struct mthca_dev*,char*,int) ;
 int stub1 (TYPE_3__*,int ) ;

void mthca_cq_completion(struct mthca_dev *dev, u32 cqn)
{
 struct mthca_cq *cq;

 cq = mthca_array_get(&dev->cq_table.cq, cqn & (dev->limits.num_cqs - 1));

 if (!cq) {
  mthca_warn(dev, "Completion event for bogus CQ %08x\n", cqn);
  return;
 }

 ++cq->arm_sn;

 cq->ibcq.comp_handler(&cq->ibcq, cq->ibcq.cq_context);
}
