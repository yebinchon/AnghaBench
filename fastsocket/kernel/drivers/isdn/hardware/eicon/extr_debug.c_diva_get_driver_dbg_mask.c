
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t dword ;
typedef int diva_os_spin_lock_magic_t ;
typedef void* byte ;
struct TYPE_5__ {TYPE_1__* hDbg; } ;
struct TYPE_4__ {int dbgMask; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* clients ;
 int dbg_q_lock ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;

int diva_get_driver_dbg_mask (dword id, byte* data) {
  diva_os_spin_lock_magic_t old_irql;
  int ret = -1;

  if (!data || !id || (id >= ARRAY_SIZE(clients))) {
    return (-1);
  }
  diva_os_enter_spin_lock (&dbg_q_lock, &old_irql, "driver info");

  if (clients[id].hDbg) {
    ret = 4;
    *data++= (byte)(clients[id].hDbg->dbgMask);
    *data++= (byte)(clients[id].hDbg->dbgMask >> 8);
    *data++= (byte)(clients[id].hDbg->dbgMask >> 16);
    *data++= (byte)(clients[id].hDbg->dbgMask >> 24);
  }

  diva_os_leave_spin_lock (&dbg_q_lock, &old_irql, "driver info");

  return (ret);
}
