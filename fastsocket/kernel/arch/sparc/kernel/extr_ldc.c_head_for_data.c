
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct ldc_channel {unsigned long tx_acked; unsigned long tx_head; TYPE_1__ cfg; } ;


 scalar_t__ LDC_MODE_STREAM ;

__attribute__((used)) static unsigned long head_for_data(struct ldc_channel *lp)
{
 if (lp->cfg.mode == LDC_MODE_STREAM)
  return lp->tx_acked;
 return lp->tx_head;
}
