
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event_extra {int alloc; int idx; int config; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_extra_reg {int config; scalar_t__ config1; scalar_t__ config2; int lock; int ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;
struct event_constraint {int dummy; } ;


 int __BITS_VALUE (int ,int,int) ;
 int atomic_add (int,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 struct event_constraint constraint_empty ;
 int nhmex_rbox_alter_er (struct intel_uncore_box*,struct perf_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uncore_box_is_fake (struct intel_uncore_box*) ;

__attribute__((used)) static struct event_constraint *
nhmex_rbox_get_constraint(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
 struct hw_perf_event_extra *reg2 = &hwc->branch_reg;
 struct intel_uncore_extra_reg *er;
 unsigned long flags;
 int idx, er_idx;
 u64 config1;
 bool ok = 0;

 if (!uncore_box_is_fake(box) && reg1->alloc)
  return ((void*)0);

 idx = reg1->idx % 6;
 config1 = reg1->config;
again:
 er_idx = idx;

 if (er_idx > 2)
  er_idx--;
 er_idx += (reg1->idx / 6) * 5;

 er = &box->shared_regs[er_idx];
 spin_lock_irqsave(&er->lock, flags);
 if (idx < 2) {
  if (!atomic_read(&er->ref) || er->config == reg1->config) {
   atomic_inc(&er->ref);
   er->config = reg1->config;
   ok = 1;
  }
 } else if (idx == 2 || idx == 3) {




  u64 mask = 0xff << ((idx - 2) * 8);
  if (!__BITS_VALUE(atomic_read(&er->ref), idx - 2, 8) ||
    !((er->config ^ config1) & mask)) {
   atomic_add(1 << ((idx - 2) * 8), &er->ref);
   er->config &= ~mask;
   er->config |= config1 & mask;
   ok = 1;
  }
 } else {
  if (!atomic_read(&er->ref) ||
    (er->config == (hwc->config >> 32) &&
     er->config1 == reg1->config &&
     er->config2 == reg2->config)) {
   atomic_inc(&er->ref);
   er->config = (hwc->config >> 32);
   er->config1 = reg1->config;
   er->config2 = reg2->config;
   ok = 1;
  }
 }
 spin_unlock_irqrestore(&er->lock, flags);

 if (!ok) {






  if (idx % 2)
   idx--;
  else
   idx++;
  if (idx != reg1->idx % 6) {
   if (idx == 2)
    config1 >>= 8;
   else if (idx == 3)
    config1 <<= 8;
   goto again;
  }
 } else {
  if (!uncore_box_is_fake(box)) {
   if (idx != reg1->idx % 6)
    nhmex_rbox_alter_er(box, event);
   reg1->alloc = 1;
  }
  return ((void*)0);
 }
 return &constraint_empty;
}
