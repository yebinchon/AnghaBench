
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpacpi_rfk {int rfkill; } ;


 unsigned int TPACPI_RFK_SW_MAX ;
 scalar_t__ rfkill_set_hw_state (int ,int) ;
 struct tpacpi_rfk** tpacpi_rfkill_switches ;

__attribute__((used)) static void tpacpi_rfk_update_hwblock_state(bool blocked)
{
 unsigned int i;
 struct tpacpi_rfk *tp_rfk;

 for (i = 0; i < TPACPI_RFK_SW_MAX; i++) {
  tp_rfk = tpacpi_rfkill_switches[i];
  if (tp_rfk) {
   if (rfkill_set_hw_state(tp_rfk->rfkill,
      blocked)) {

   }
  }
 }
}
