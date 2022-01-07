
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfp_pin {unsigned long mfpr_run; unsigned long mfpr_lpm; unsigned long config; } ;


 int BUG_ON (int) ;
 unsigned long MFPR_AF_SEL (int) ;
 unsigned long MFPR_DRIVE (int) ;
 int MFP_AF (unsigned long) ;
 int MFP_DS (unsigned long) ;
 int MFP_LPM_EDGE (unsigned long) ;
 int MFP_LPM_STATE (unsigned long) ;
 int MFP_PIN (unsigned long) ;
 int MFP_PIN_MAX ;
 int MFP_PULL (unsigned long) ;
 int MFP_PULL_NONE ;
 int __mfp_config_run (struct mfp_pin*) ;
 scalar_t__ likely (int) ;
 int mfp_spin_lock ;
 struct mfp_pin* mfp_table ;
 unsigned long* mfpr_edge ;
 unsigned long* mfpr_lpm ;
 unsigned long* mfpr_pull ;
 int mfpr_sync () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mfp_config(unsigned long *mfp_cfgs, int num)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&mfp_spin_lock, flags);

 for (i = 0; i < num; i++, mfp_cfgs++) {
  unsigned long tmp, c = *mfp_cfgs;
  struct mfp_pin *p;
  int pin, af, drv, lpm, edge, pull;

  pin = MFP_PIN(c);
  BUG_ON(pin >= MFP_PIN_MAX);
  p = &mfp_table[pin];

  af = MFP_AF(c);
  drv = MFP_DS(c);
  lpm = MFP_LPM_STATE(c);
  edge = MFP_LPM_EDGE(c);
  pull = MFP_PULL(c);





  tmp = MFPR_AF_SEL(af) | MFPR_DRIVE(drv);

  if (likely(pull == MFP_PULL_NONE)) {
   p->mfpr_run = tmp | mfpr_lpm[lpm] | mfpr_edge[edge];
   p->mfpr_lpm = p->mfpr_run;
  } else {
   p->mfpr_lpm = tmp | mfpr_lpm[lpm] | mfpr_edge[edge];
   p->mfpr_run = tmp | mfpr_pull[pull];
  }

  p->config = c; __mfp_config_run(p);
 }

 mfpr_sync();
 spin_unlock_irqrestore(&mfp_spin_lock, flags);
}
