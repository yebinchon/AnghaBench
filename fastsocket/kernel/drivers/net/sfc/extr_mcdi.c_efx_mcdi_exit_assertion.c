
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int MCDI_SET_DWORD (int *,int ,int ) ;
 int MC_CMD_REBOOT ;
 int MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION ;
 int MC_CMD_REBOOT_IN_LEN ;
 scalar_t__ MC_CMD_REBOOT_OUT_LEN ;
 int REBOOT_IN_FLAGS ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int,int *,int ,int *) ;

__attribute__((used)) static void efx_mcdi_exit_assertion(struct efx_nic *efx)
{
 u8 inbuf[MC_CMD_REBOOT_IN_LEN];







 BUILD_BUG_ON(MC_CMD_REBOOT_OUT_LEN != 0);
 MCDI_SET_DWORD(inbuf, REBOOT_IN_FLAGS,
         MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION);
 (void) efx_mcdi_rpc(efx, MC_CMD_REBOOT, inbuf, MC_CMD_REBOOT_IN_LEN,
       ((void*)0), 0, ((void*)0));
}
