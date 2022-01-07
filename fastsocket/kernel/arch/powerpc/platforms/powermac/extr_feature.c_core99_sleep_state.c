
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_2__ {int board_flags; } ;


 long EPERM ;
 int PMAC_MB_CAN_SLEEP ;
 int UNI_N_HWINIT_STATE ;
 int UNI_N_HWINIT_STATE_RUNNING ;
 int UNI_N_HWINIT_STATE_SLEEPING ;
 int UNI_N_POWER_MGT ;
 int UNI_N_POWER_MGT_IDLE2 ;
 int UNI_N_POWER_MGT_NORMAL ;
 int UN_OUT (int ,int ) ;
 long core99_sleep () ;
 long core99_wake_up () ;
 TYPE_1__ pmac_mb ;
 int udelay (int) ;

__attribute__((used)) static long
core99_sleep_state(struct device_node *node, long param, long value)
{



 if (param == 1) {
  if (value == 1) {
   UN_OUT(UNI_N_HWINIT_STATE, UNI_N_HWINIT_STATE_SLEEPING);
   UN_OUT(UNI_N_POWER_MGT, UNI_N_POWER_MGT_IDLE2);
  } else {
   UN_OUT(UNI_N_POWER_MGT, UNI_N_POWER_MGT_NORMAL);
   udelay(10);
   UN_OUT(UNI_N_HWINIT_STATE, UNI_N_HWINIT_STATE_RUNNING);
   udelay(10);
  }
  return 0;
 }
 if ((pmac_mb.board_flags & PMAC_MB_CAN_SLEEP) == 0)
  return -EPERM;
 return 0;
}
