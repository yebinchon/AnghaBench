
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rst; } ;


 TYPE_1__* ds1603 ;
 int rtc_reg_read () ;
 int rtc_reg_write (int) ;

__attribute__((used)) static void rtc_nrst_high(void)
{
 rtc_reg_write(rtc_reg_read() | ds1603->rst);
}
