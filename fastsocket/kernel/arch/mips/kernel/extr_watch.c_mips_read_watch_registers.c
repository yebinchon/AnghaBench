
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mips3264_watch_reg_state {int* watchhi; int* watchlo; } ;
struct TYPE_5__ {struct mips3264_watch_reg_state mips3264; } ;
struct TYPE_6__ {TYPE_1__ watch; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_7__ {int watch_reg_use_cnt; } ;


 int BUG () ;
 TYPE_4__* current ;
 TYPE_3__ current_cpu_data ;
 int read_c0_watchhi0 () ;
 int read_c0_watchhi1 () ;
 int read_c0_watchhi2 () ;
 int read_c0_watchhi3 () ;

void mips_read_watch_registers(void)
{
 struct mips3264_watch_reg_state *watches =
  &current->thread.watch.mips3264;
 switch (current_cpu_data.watch_reg_use_cnt) {
 default:
  BUG();
 case 4:
  watches->watchhi[3] = (read_c0_watchhi3() & 0x0fff);
 case 3:
  watches->watchhi[2] = (read_c0_watchhi2() & 0x0fff);
 case 2:
  watches->watchhi[1] = (read_c0_watchhi1() & 0x0fff);
 case 1:
  watches->watchhi[0] = (read_c0_watchhi0() & 0x0fff);
 }
 if (current_cpu_data.watch_reg_use_cnt == 1 &&
     (watches->watchhi[0] & 7) == 0) {





  watches->watchhi[0] |= (watches->watchlo[0] & 7);
 }
 }
