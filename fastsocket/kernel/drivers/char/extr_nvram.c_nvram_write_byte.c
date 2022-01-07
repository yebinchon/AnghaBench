
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __nvram_write_byte (unsigned char,int) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void nvram_write_byte(unsigned char c, int i)
{
 unsigned long flags;

 spin_lock_irqsave(&rtc_lock, flags);
 __nvram_write_byte(c, i);
 spin_unlock_irqrestore(&rtc_lock, flags);
}
