
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long tv_sec; scalar_t__ tv_nsec; } ;


 int READ_TIME_CMD ;
 int rtc_end_op () ;
 int rtc_init_op () ;
 int rtc_lock ;
 unsigned long rtc_read_word () ;
 int rtc_write_byte (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void read_persistent_clock(struct timespec *ts)
{
 unsigned long word;
 unsigned long flags;

 spin_lock_irqsave(&rtc_lock, flags);
 rtc_init_op();
 rtc_write_byte(READ_TIME_CMD);
 word = rtc_read_word();
 rtc_end_op();
 spin_unlock_irqrestore(&rtc_lock, flags);

 ts->tv_sec = word;
 ts->tv_nsec = 0;
}
