
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uld_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ qpcnt; scalar_t__ db_state; int lock; int qpidr; } ;


 scalar_t__ FLOW_CONTROL ;
 scalar_t__ NORMAL ;
 scalar_t__ db_fc_threshold ;
 int enable_qp_db ;
 int idr_for_each (int *,int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void resume_queues(struct uld_ctx *ctx)
{
 spin_lock_irq(&ctx->dev->lock);
 if (ctx->dev->qpcnt <= db_fc_threshold &&
     ctx->dev->db_state == FLOW_CONTROL) {
  ctx->dev->db_state = NORMAL;
  idr_for_each(&ctx->dev->qpidr, enable_qp_db, ((void*)0));
 }
 spin_unlock_irq(&ctx->dev->lock);
}
