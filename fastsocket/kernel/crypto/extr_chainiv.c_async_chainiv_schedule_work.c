
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qlen; } ;
struct async_chainiv_ctx {int err; int postponed; int state; TYPE_1__ queue; } ;


 int BUG_ON (int) ;
 int CHAINIV_STATE_INUSE ;
 int clear_bit (int ,int *) ;
 int kcrypto_wq ;
 int queue_work (int ,int *) ;
 int smp_mb__before_clear_bit () ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int async_chainiv_schedule_work(struct async_chainiv_ctx *ctx)
{
 int queued;
 int err = ctx->err;

 if (!ctx->queue.qlen) {
  smp_mb__before_clear_bit();
  clear_bit(CHAINIV_STATE_INUSE, &ctx->state);

  if (!ctx->queue.qlen ||
      test_and_set_bit(CHAINIV_STATE_INUSE, &ctx->state))
   goto out;
 }

 queued = queue_work(kcrypto_wq, &ctx->postponed);
 BUG_ON(!queued);

out:
 return err;
}
