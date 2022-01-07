
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_uncore_extra_reg {int config; int lock; int ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;


 int EXTRA_REG_NHMEX_M_ZDP_CTL_FVC ;
 int NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK (int) ;
 int NHMEX_M_PMON_ZDP_CTL_FVC_MASK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK (int) ;
 int WSMEX_M_PMON_ZDP_CTL_FVC_MASK ;
 scalar_t__ __BITS_VALUE (int ,int,int) ;
 int atomic_add (int,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uncore_nhmex ;

__attribute__((used)) static bool nhmex_mbox_get_shared_reg(struct intel_uncore_box *box, int idx, u64 config)
{
 struct intel_uncore_extra_reg *er;
 unsigned long flags;
 bool ret = 0;
 u64 mask;

 if (idx < EXTRA_REG_NHMEX_M_ZDP_CTL_FVC) {
  er = &box->shared_regs[idx];
  spin_lock_irqsave(&er->lock, flags);
  if (!atomic_read(&er->ref) || er->config == config) {
   atomic_inc(&er->ref);
   er->config = config;
   ret = 1;
  }
  spin_unlock_irqrestore(&er->lock, flags);

  return ret;
 }





 idx -= EXTRA_REG_NHMEX_M_ZDP_CTL_FVC;
 if (WARN_ON_ONCE(idx >= 4))
  return 0;


 if (uncore_nhmex)
  mask = NHMEX_M_PMON_ZDP_CTL_FVC_MASK;
 else
  mask = WSMEX_M_PMON_ZDP_CTL_FVC_MASK;
 er = &box->shared_regs[EXTRA_REG_NHMEX_M_ZDP_CTL_FVC];

 spin_lock_irqsave(&er->lock, flags);

 if (__BITS_VALUE(atomic_read(&er->ref), idx, 8)) {
  if (uncore_nhmex)
   mask |= NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(idx);
  else
   mask |= WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(idx);
 }
 if (!atomic_read(&er->ref) || !((er->config ^ config) & mask)) {
  atomic_add(1 << (idx * 8), &er->ref);
  if (uncore_nhmex)
   mask = NHMEX_M_PMON_ZDP_CTL_FVC_MASK |
    NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(idx);
  else
   mask = WSMEX_M_PMON_ZDP_CTL_FVC_MASK |
    WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(idx);
  er->config &= ~mask;
  er->config |= (config & mask);
  ret = 1;
 }
 spin_unlock_irqrestore(&er->lock, flags);

 return ret;
}
