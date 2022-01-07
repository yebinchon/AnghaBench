
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTC_PORT (int) ;
 unsigned char inb (int ) ;
 int lock_cmos_prefix (unsigned char) ;
 int lock_cmos_suffix (unsigned char) ;
 int outb (unsigned char,int ) ;

unsigned char rtc_cmos_read(unsigned char addr)
{
 unsigned char val;

 lock_cmos_prefix(addr);
 outb(addr, RTC_PORT(0));
 val = inb(RTC_PORT(1));
 lock_cmos_suffix(addr);

 return val;
}
