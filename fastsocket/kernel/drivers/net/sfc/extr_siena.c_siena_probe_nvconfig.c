
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct efx_nic {int timer_quantum_ns; TYPE_1__* net_dev; } ;
struct TYPE_2__ {int perm_addr; } ;


 int MC_CMD_CAPABILITIES_TURBO_ACTIVE_LBN ;
 int efx_mcdi_get_board_cfg (struct efx_nic*,int ,int *,int*) ;

__attribute__((used)) static int siena_probe_nvconfig(struct efx_nic *efx)
{
 u32 caps = 0;
 int rc;

 rc = efx_mcdi_get_board_cfg(efx, efx->net_dev->perm_addr, ((void*)0), &caps);

 efx->timer_quantum_ns =
  (caps & (1 << MC_CMD_CAPABILITIES_TURBO_ACTIVE_LBN)) ?
  3072 : 6144;
 return rc;
}
