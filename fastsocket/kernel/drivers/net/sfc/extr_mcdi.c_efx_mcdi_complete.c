
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mcdi_iface {int wq; int state; } ;


 int MCDI_STATE_COMPLETED ;
 scalar_t__ MCDI_STATE_RUNNING ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static bool efx_mcdi_complete(struct efx_mcdi_iface *mcdi)
{






 if (atomic_cmpxchg(&mcdi->state,
      MCDI_STATE_RUNNING,
      MCDI_STATE_COMPLETED) == MCDI_STATE_RUNNING) {
  wake_up(&mcdi->wq);
  return 1;
 }

 return 0;
}
