
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct thresh_restart {int reset; int old_limit; int lvt_off; TYPE_1__* b; scalar_t__ set_lvt_off; } ;
struct TYPE_2__ {int threshold_limit; int address; scalar_t__ interrupt_enable; int interrupt_capable; } ;


 int INT_TYPE_APIC ;
 int MASK_COUNT_EN_HI ;
 int MASK_ERR_COUNT_HI ;
 int MASK_INT_TYPE_HI ;
 int MASK_LVTOFF_HI ;
 int MASK_OVERFLOW_HI ;
 int THRESHOLD_MAX ;
 scalar_t__ lvt_off_valid (TYPE_1__*,int,int,int) ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void threshold_restart_bank(void *_tr)
{
 struct thresh_restart *tr = _tr;
 u32 hi, lo;

 rdmsr(tr->b->address, lo, hi);

 if (tr->b->threshold_limit < (hi & THRESHOLD_MAX))
  tr->reset = 1;

 if (tr->reset) {
  hi =
      (hi & ~(MASK_ERR_COUNT_HI | MASK_OVERFLOW_HI)) |
      (THRESHOLD_MAX - tr->b->threshold_limit);
 } else if (tr->old_limit) {
  int new_count = (hi & THRESHOLD_MAX) +
      (tr->old_limit - tr->b->threshold_limit);

  hi = (hi & ~MASK_ERR_COUNT_HI) |
      (new_count & THRESHOLD_MAX);
 }


 hi &= ~MASK_INT_TYPE_HI;

 if (!tr->b->interrupt_capable)
  goto done;

 if (tr->set_lvt_off) {
  if (lvt_off_valid(tr->b, tr->lvt_off, lo, hi)) {

   hi &= ~MASK_LVTOFF_HI;
   hi |= tr->lvt_off << 20;
  }
 }

 if (tr->b->interrupt_enable)
  hi |= INT_TYPE_APIC;

 done:

 hi |= MASK_COUNT_EN_HI;
 wrmsr(tr->b->address, lo, hi);
}
