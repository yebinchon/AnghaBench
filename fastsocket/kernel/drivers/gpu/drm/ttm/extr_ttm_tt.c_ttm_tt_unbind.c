
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {scalar_t__ state; TYPE_1__* func; } ;
struct TYPE_2__ {int (* unbind ) (struct ttm_tt*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct ttm_tt*) ;
 scalar_t__ tt_bound ;
 scalar_t__ tt_unbound ;

void ttm_tt_unbind(struct ttm_tt *ttm)
{
 int ret;

 if (ttm->state == tt_bound) {
  ret = ttm->func->unbind(ttm);
  BUG_ON(ret);
  ttm->state = tt_unbound;
 }
}
