
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfpr_off; } ;


 int BUG_ON (int) ;
 int MFP_PIN_MAX ;
 int mfp_spin_lock ;
 TYPE_1__* mfp_table ;
 unsigned long mfpr_readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long mfp_read(int mfp)
{
 unsigned long val, flags;

 BUG_ON(mfp < 0 || mfp >= MFP_PIN_MAX);

 spin_lock_irqsave(&mfp_spin_lock, flags);
 val = mfpr_readl(mfp_table[mfp].mfpr_off);
 spin_unlock_irqrestore(&mfp_spin_lock, flags);

 return val;
}
