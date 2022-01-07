
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mips3264_watch_reg_state {int* watchhi; int * watchlo; } ;
struct TYPE_5__ {struct mips3264_watch_reg_state mips3264; } ;
struct TYPE_6__ {TYPE_1__ watch; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_7__ {int watch_reg_use_cnt; } ;


 int BUG () ;
 TYPE_4__* current ;
 TYPE_3__ current_cpu_data ;
 int write_c0_watchhi0 (int) ;
 int write_c0_watchhi1 (int) ;
 int write_c0_watchhi2 (int) ;
 int write_c0_watchhi3 (int) ;
 int write_c0_watchlo0 (int ) ;
 int write_c0_watchlo1 (int ) ;
 int write_c0_watchlo2 (int ) ;
 int write_c0_watchlo3 (int ) ;

void mips_install_watch_registers(void)
{
 struct mips3264_watch_reg_state *watches =
  &current->thread.watch.mips3264;
 switch (current_cpu_data.watch_reg_use_cnt) {
 default:
  BUG();
 case 4:
  write_c0_watchlo3(watches->watchlo[3]);


  write_c0_watchhi3(0x40000007 | watches->watchhi[3]);
 case 3:
  write_c0_watchlo2(watches->watchlo[2]);
  write_c0_watchhi2(0x40000007 | watches->watchhi[2]);
 case 2:
  write_c0_watchlo1(watches->watchlo[1]);
  write_c0_watchhi1(0x40000007 | watches->watchhi[1]);
 case 1:
  write_c0_watchlo0(watches->watchlo[0]);
  write_c0_watchhi0(0x40000007 | watches->watchhi[0]);
 }
}
