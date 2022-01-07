
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_ST_CR ;
 int AT91_ST_EXTEN ;
 int AT91_ST_RSTEN ;
 int AT91_ST_WDMR ;
 int AT91_ST_WDRST ;
 int at91_sys_write (int ,int) ;

__attribute__((used)) static void at91rm9200_reset(void)
{



 at91_sys_write(AT91_ST_WDMR, AT91_ST_RSTEN | AT91_ST_EXTEN | 1);
 at91_sys_write(AT91_ST_CR, AT91_ST_WDRST);
}
