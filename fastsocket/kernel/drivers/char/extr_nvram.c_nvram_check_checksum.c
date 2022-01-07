
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __nvram_check_checksum () ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int nvram_check_checksum(void)
{
 unsigned long flags;
 int rv;

 spin_lock_irqsave(&rtc_lock, flags);
 rv = __nvram_check_checksum();
 spin_unlock_irqrestore(&rtc_lock, flags);
 return rv;
}
