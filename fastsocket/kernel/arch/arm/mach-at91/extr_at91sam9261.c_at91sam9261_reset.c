
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_RSTC_CR ;
 int AT91_RSTC_KEY ;
 int AT91_RSTC_PERRST ;
 int AT91_RSTC_PROCRST ;
 int at91_sys_write (int ,int) ;

__attribute__((used)) static void at91sam9261_reset(void)
{
 at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_PROCRST | AT91_RSTC_PERRST);
}
