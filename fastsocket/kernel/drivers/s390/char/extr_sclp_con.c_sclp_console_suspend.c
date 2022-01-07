
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclp_con_lock ;
 int sclp_con_suspended ;
 int sclp_console_flush () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sclp_console_suspend(void)
{
 unsigned long flags;

 spin_lock_irqsave(&sclp_con_lock, flags);
 sclp_con_suspended = 1;
 spin_unlock_irqrestore(&sclp_con_lock, flags);
 sclp_console_flush();
}
