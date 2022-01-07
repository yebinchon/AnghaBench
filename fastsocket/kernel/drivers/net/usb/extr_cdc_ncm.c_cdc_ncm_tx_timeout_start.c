
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdc_ncm_ctx {int tx_timer; int stop; } ;


 int CDC_NCM_TIMER_INTERVAL ;
 int HRTIMER_MODE_REL ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ hrtimer_active (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_set (int ,int ) ;

__attribute__((used)) static void cdc_ncm_tx_timeout_start(struct cdc_ncm_ctx *ctx)
{

 if (!(hrtimer_active(&ctx->tx_timer) || atomic_read(&ctx->stop)))
  hrtimer_start(&ctx->tx_timer,
    ktime_set(0, CDC_NCM_TIMER_INTERVAL),
    HRTIMER_MODE_REL);
}
