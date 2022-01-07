
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_hlt () ;
 int floppy_hlt_lock ;
 scalar_t__ hlt_disabled ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void floppy_enable_hlt(void)
{
 unsigned long flags;

 spin_lock_irqsave(&floppy_hlt_lock, flags);
 if (hlt_disabled) {
  hlt_disabled = 0;



 }
 spin_unlock_irqrestore(&floppy_hlt_lock, flags);
}
