
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;
typedef int inbuf ;


 int MCDI_SET_DWORD (int *,int ,int ) ;
 int MC_CMD_PTP ;
 int MC_CMD_PTP_IN_DISABLE_LEN ;
 int MC_CMD_PTP_OP_DISABLE ;
 int PTP_IN_OP ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int,int *,int ,int *) ;

__attribute__((used)) static int efx_ptp_disable(struct efx_nic *efx)
{
 u8 inbuf[MC_CMD_PTP_IN_DISABLE_LEN];

 MCDI_SET_DWORD(inbuf, PTP_IN_OP, MC_CMD_PTP_OP_DISABLE);
 return efx_mcdi_rpc(efx, MC_CMD_PTP, inbuf, sizeof(inbuf),
       ((void*)0), 0, ((void*)0));
}
