
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpm_muram_info ;
 int cpm_muram_lock ;
 int rh_free (int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cpm_muram_free(unsigned long offset)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&cpm_muram_lock, flags);
 ret = rh_free(&cpm_muram_info, offset);
 spin_unlock_irqrestore(&cpm_muram_lock, flags);

 return ret;
}
