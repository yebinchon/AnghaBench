
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alignment; } ;


 TYPE_1__ cpm_muram_info ;
 int cpm_muram_lock ;
 unsigned long rh_alloc_fixed (TYPE_1__*,unsigned long,unsigned long,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long cpm_muram_alloc_fixed(unsigned long offset, unsigned long size)
{
 unsigned long start;
 unsigned long flags;

 spin_lock_irqsave(&cpm_muram_lock, flags);
 cpm_muram_info.alignment = 1;
 start = rh_alloc_fixed(&cpm_muram_info, offset, size, "commproc");
 spin_unlock_irqrestore(&cpm_muram_lock, flags);

 return start;
}
