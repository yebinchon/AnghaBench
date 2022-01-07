
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ omap3_fclks_active () ;
 int omap_uart_can_sleep () ;

__attribute__((used)) static int omap3_can_sleep(void)
{
 if (!omap_uart_can_sleep())
  return 0;
 if (omap3_fclks_active())
  return 0;
 return 1;
}
