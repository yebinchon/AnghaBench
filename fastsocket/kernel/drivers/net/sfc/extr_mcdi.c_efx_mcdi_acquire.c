
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mcdi_iface {int state; int wq; } ;


 scalar_t__ MCDI_STATE_QUIESCENT ;
 int MCDI_STATE_RUNNING ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void efx_mcdi_acquire(struct efx_mcdi_iface *mcdi)
{


 wait_event(mcdi->wq,
     atomic_cmpxchg(&mcdi->state,
      MCDI_STATE_QUIESCENT,
      MCDI_STATE_RUNNING)
     == MCDI_STATE_QUIESCENT);
}
