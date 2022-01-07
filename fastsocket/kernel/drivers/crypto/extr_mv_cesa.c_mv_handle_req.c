
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {int queue_th; int lock; int queue; } ;


 int ablkcipher_enqueue_request (int *,struct ablkcipher_request*) ;
 TYPE_1__* cpg ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int mv_handle_req(struct ablkcipher_request *req)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cpg->lock, flags);
 ret = ablkcipher_enqueue_request(&cpg->queue, req);
 spin_unlock_irqrestore(&cpg->lock, flags);
 wake_up_process(cpg->queue_th);
 return ret;
}
