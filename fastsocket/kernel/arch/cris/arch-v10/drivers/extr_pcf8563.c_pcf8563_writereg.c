
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtc_write (int,unsigned char) ;

void
pcf8563_writereg(int reg, unsigned char val)
{
 rtc_write(reg, val);
}
