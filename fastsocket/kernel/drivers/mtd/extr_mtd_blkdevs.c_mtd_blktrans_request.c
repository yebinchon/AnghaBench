
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct mtd_blktrans_ops* queuedata; } ;
struct mtd_blktrans_ops {TYPE_1__* blkcore_priv; } ;
struct TYPE_2__ {int thread; } ;


 int wake_up_process (int ) ;

__attribute__((used)) static void mtd_blktrans_request(struct request_queue *rq)
{
 struct mtd_blktrans_ops *tr = rq->queuedata;
 wake_up_process(tr->blkcore_priv->thread);
}
