
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mcdi_iface {int wq; int state; } ;


 int MCDI_STATE_QUIESCENT ;
 int atomic_set (int *,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void efx_mcdi_release(struct efx_mcdi_iface *mcdi)
{
 atomic_set(&mcdi->state, MCDI_STATE_QUIESCENT);
 wake_up(&mcdi->wq);
}
