
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int WDOG_WCR ;
 int WDOG_WCR_ASSERT ;
 int WDOG_WCR_OUT_ENABLE ;
 int __raw_readw (int ) ;
 int __raw_writew (int ,int ) ;

void mxc91231_power_off(void)
{
 u16 wcr;

 wcr = __raw_readw(WDOG_WCR);
 wcr |= WDOG_WCR_OUT_ENABLE;
 wcr &= ~WDOG_WCR_ASSERT;
 __raw_writew(wcr, WDOG_WCR);
}
