
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_byte_rtc (int,int) ;

__attribute__((used)) static void
ds1302_wenable(void)
{
 out_byte_rtc(0x8e,0x00);
}
