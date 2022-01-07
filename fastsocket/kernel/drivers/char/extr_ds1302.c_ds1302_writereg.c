
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ds1302_wdisable () ;
 int ds1302_wenable () ;
 int out_byte_rtc (int,unsigned char) ;

void
ds1302_writereg(int reg, unsigned char val)
{
 ds1302_wenable();
 out_byte_rtc((0x80 | (reg << 1)),val);
 ds1302_wdisable();
}
