
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char in_byte_rtc (int) ;

unsigned char
ds1302_readreg(int reg)
{
 unsigned char x;

 x=in_byte_rtc((0x81 | (reg << 1)));

 return x;
}
