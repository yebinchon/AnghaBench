
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_loglevel ;
 int console_unblank () ;
 int oops_in_progress ;
 int printk (char*) ;

void bust_spinlocks(int yes)
{
 if (yes) {
  oops_in_progress = 1;
 } else {
  int loglevel_save = console_loglevel;
  console_unblank();
  oops_in_progress = 0;





  console_loglevel = 15;
  printk(" ");
  console_loglevel = loglevel_save;
 }
}
