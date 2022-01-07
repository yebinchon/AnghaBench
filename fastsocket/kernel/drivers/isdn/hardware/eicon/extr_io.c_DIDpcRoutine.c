
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct pc_maint {int req; } ;
struct _diva_os_soft_isr {int dummy; } ;
typedef int diva_os_spin_lock_magic_t ;
typedef int diva_os_atomic_t ;
struct TYPE_14__ {int rc; int req; } ;
struct TYPE_13__ {int (* ram_in_buffer ) (TYPE_2__*,TYPE_4__*,struct pc_maint*,int) ;scalar_t__ (* ram_in ) (TYPE_2__*,int *) ;int (* ram_out ) (TYPE_2__*,int *,int ) ;} ;
struct TYPE_12__ {int pcm_pending; int data_spin_lock; TYPE_4__* pcm; scalar_t__ pcm_data; int (* out ) (TYPE_2__*) ;int (* clr_irq ) (TYPE_2__*) ;int (* dpc ) (TYPE_2__*) ;int Unavailable; scalar_t__ (* tst_irq ) (TYPE_2__*) ;int in_dpc; TYPE_2__ a; } ;
typedef TYPE_1__* PISDN_ADAPTER ;
typedef TYPE_2__ ADAPTER ;


 scalar_t__ diva_os_atomic_decrement (int *) ;
 int diva_os_atomic_increment (int *) ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;
 int stub5 (TYPE_2__*,int *,int ) ;
 int stub6 (TYPE_2__*,int *,int ) ;
 scalar_t__ stub7 (TYPE_2__*,int *) ;
 int stub8 (TYPE_2__*,TYPE_4__*,struct pc_maint*,int) ;

void DIDpcRoutine (struct _diva_os_soft_isr* psoft_isr, void* Context) {
 PISDN_ADAPTER IoAdapter = (PISDN_ADAPTER)Context ;
 ADAPTER* a = &IoAdapter->a ;
 diva_os_atomic_t* pin_dpc = &IoAdapter->in_dpc;
 if (diva_os_atomic_increment (pin_dpc) == 1) {
  do {
   if ( IoAdapter->tst_irq (a) )
   {
    if ( !IoAdapter->Unavailable )
     IoAdapter->dpc (a) ;
    IoAdapter->clr_irq (a) ;
   }
   IoAdapter->out (a) ;
  } while (diva_os_atomic_decrement (pin_dpc) > 0);



  if (IoAdapter->pcm_pending) {
   struct pc_maint *pcm;
   diva_os_spin_lock_magic_t OldIrql ;
   diva_os_enter_spin_lock (&IoAdapter->data_spin_lock,
                &OldIrql,
                "data_dpc");
   pcm = (struct pc_maint *)IoAdapter->pcm_data;
   switch (IoAdapter->pcm_pending) {
    case 1:
     a->ram_out (a, &IoAdapter->pcm->rc, 0) ;
     a->ram_out (a, &IoAdapter->pcm->req, pcm->req) ;
     IoAdapter->pcm_pending = 2;
     break;
    case 2:
     if ((int)(a->ram_in (a, &IoAdapter->pcm->rc))) {
      a->ram_in_buffer (a, IoAdapter->pcm, pcm, sizeof(*pcm)) ;
      IoAdapter->pcm_pending = 3;
     }
     break;
    case 3:
     break;
   }
   diva_os_leave_spin_lock (&IoAdapter->data_spin_lock,
                &OldIrql,
                "data_dpc");
  }

 }
}
