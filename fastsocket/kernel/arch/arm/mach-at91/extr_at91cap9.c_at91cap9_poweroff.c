
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_SHDW_CR ;
 int AT91_SHDW_KEY ;
 int AT91_SHDW_SHDW ;
 int at91_sys_write (int ,int) ;

__attribute__((used)) static void at91cap9_poweroff(void)
{
 at91_sys_write(AT91_SHDW_CR, AT91_SHDW_KEY | AT91_SHDW_SHDW);
}
