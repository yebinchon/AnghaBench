
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_FIELD (int*,int ,int) ;
 int IO_STATE (int*,int ,int ) ;
 int* R_WATCHDOG ;
 scalar_t__ WATCHDOG_MIN_FREE_PAGES ;
 int enable ;
 int key ;
 scalar_t__ nr_free_pages () ;
 int start ;
 int watchdog_key ;

void
reset_watchdog(void)
{
}
