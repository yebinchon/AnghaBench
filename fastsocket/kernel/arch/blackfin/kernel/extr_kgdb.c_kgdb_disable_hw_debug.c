
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CSYNC () ;
 int bfin_write_WPDACTL (int ) ;
 int bfin_write_WPIACTL (int ) ;

void kgdb_disable_hw_debug(struct pt_regs *regs)
{

 bfin_write_WPIACTL(0);
 bfin_write_WPDACTL(0);
 CSYNC();
}
