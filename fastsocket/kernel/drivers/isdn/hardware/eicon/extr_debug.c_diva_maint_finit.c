
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pmem; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* clients ;
 int dbg_adapter_lock ;
 int * dbg_base ;
 int dbg_q_lock ;
 int * dbg_queue ;
 int diva_os_destroy_spin_lock (int *,char*) ;
 int diva_os_free (int ,scalar_t__) ;
 scalar_t__ external_dbg_queue ;

void* diva_maint_finit (void) {
  void* ret = (void*)dbg_base;
  int i;

  dbg_queue = ((void*)0);
  dbg_base = ((void*)0);

  if (ret) {
    diva_os_destroy_spin_lock(&dbg_q_lock, "dbg_finit");
    diva_os_destroy_spin_lock(&dbg_adapter_lock, "dbg_finit");
  }

  if (external_dbg_queue) {
    ret = ((void*)0);
  }
  external_dbg_queue = 0;

  for (i = 1; i < ARRAY_SIZE(clients); i++) {
    if (clients[i].pmem) {
      diva_os_free (0, clients[i].pmem);
    }
  }

  return (ret);
}
