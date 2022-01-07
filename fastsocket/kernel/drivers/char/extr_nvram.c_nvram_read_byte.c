
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char __nvram_read_byte (int) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned char nvram_read_byte(int i)
{
 unsigned long flags;
 unsigned char c;

 spin_lock_irqsave(&rtc_lock, flags);
 c = __nvram_read_byte(i);
 spin_unlock_irqrestore(&rtc_lock, flags);
 return c;
}
