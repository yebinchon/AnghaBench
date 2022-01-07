
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct efx_nic {TYPE_2__* ptp_data; } ;
typedef int inbuf ;
struct TYPE_4__ {int mode; TYPE_1__* channel; } ;
struct TYPE_3__ {int channel; } ;


 int MCDI_SET_DWORD (int *,int ,int ) ;
 int MC_CMD_PTP ;
 int MC_CMD_PTP_IN_ENABLE_LEN ;
 int MC_CMD_PTP_OP_ENABLE ;
 int PTP_IN_ENABLE_MODE ;
 int PTP_IN_ENABLE_QUEUE ;
 int PTP_IN_OP ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int,int *,int ,int *) ;

__attribute__((used)) static int efx_ptp_enable(struct efx_nic *efx)
{
 u8 inbuf[MC_CMD_PTP_IN_ENABLE_LEN];

 MCDI_SET_DWORD(inbuf, PTP_IN_OP, MC_CMD_PTP_OP_ENABLE);
 MCDI_SET_DWORD(inbuf, PTP_IN_ENABLE_QUEUE,
         efx->ptp_data->channel->channel);
 MCDI_SET_DWORD(inbuf, PTP_IN_ENABLE_MODE, efx->ptp_data->mode);

 return efx_mcdi_rpc(efx, MC_CMD_PTP, inbuf, sizeof(inbuf),
       ((void*)0), 0, ((void*)0));
}
