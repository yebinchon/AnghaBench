
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int watch_reg_count; } ;


 int BUG () ;
 TYPE_1__ current_cpu_data ;
 int write_c0_watchlo0 (int ) ;
 int write_c0_watchlo1 (int ) ;
 int write_c0_watchlo2 (int ) ;
 int write_c0_watchlo3 (int ) ;
 int write_c0_watchlo4 (int ) ;
 int write_c0_watchlo5 (int ) ;
 int write_c0_watchlo6 (int ) ;
 int write_c0_watchlo7 (int ) ;

void mips_clear_watch_registers(void)
{
 switch (current_cpu_data.watch_reg_count) {
 default:
  BUG();
 case 8:
  write_c0_watchlo7(0);
 case 7:
  write_c0_watchlo6(0);
 case 6:
  write_c0_watchlo5(0);
 case 5:
  write_c0_watchlo4(0);
 case 4:
  write_c0_watchlo3(0);
 case 3:
  write_c0_watchlo2(0);
 case 2:
  write_c0_watchlo1(0);
 case 1:
  write_c0_watchlo0(0);
 }
}
