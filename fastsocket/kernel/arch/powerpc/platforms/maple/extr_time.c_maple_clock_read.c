
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb_p (scalar_t__) ;
 scalar_t__ maple_rtc_addr ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static int maple_clock_read(int addr)
{
 outb_p(addr, maple_rtc_addr);
 return inb_p(maple_rtc_addr+1);
}
