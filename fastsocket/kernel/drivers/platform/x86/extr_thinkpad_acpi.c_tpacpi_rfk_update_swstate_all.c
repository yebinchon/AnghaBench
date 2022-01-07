
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TPACPI_RFK_SW_MAX ;
 int tpacpi_rfk_update_swstate (int ) ;
 int * tpacpi_rfkill_switches ;

__attribute__((used)) static void tpacpi_rfk_update_swstate_all(void)
{
 unsigned int i;

 for (i = 0; i < TPACPI_RFK_SW_MAX; i++)
  tpacpi_rfk_update_swstate(tpacpi_rfkill_switches[i]);
}
