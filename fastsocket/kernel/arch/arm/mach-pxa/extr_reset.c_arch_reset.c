
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESET_STATUS_ALL ;
 int clear_reset_status (int ) ;
 int cpu_reset (int ) ;
 int do_gpio_reset () ;
 int do_hw_reset () ;

void arch_reset(char mode, const char *cmd)
{
 clear_reset_status(RESET_STATUS_ALL);

 switch (mode) {
 case 's':

  cpu_reset(0);
  break;
 case 'g':
  do_gpio_reset();
  break;
 case 'h':
 default:
  do_hw_reset();
  break;
 }
}
