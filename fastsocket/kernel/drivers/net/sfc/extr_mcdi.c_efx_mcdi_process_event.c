
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int net_dev; } ;
struct efx_channel {struct efx_nic* efx; } ;
typedef int efx_qword_t ;


 int CMDDONE_DATALEN ;
 int CMDDONE_ERRNO ;
 int CMDDONE_SEQ ;
 int EFX_QWORD_FIELD (int ,int ) ;
 int EINTR ;
 int EIO ;
 int FLR_VF ;
 int MCDI_EVENT_CODE ;
 int MCDI_EVENT_DATA ;
 int MCDI_EVENT_FIELD (int ,int ) ;
 int efx_mcdi_ev_cpl (struct efx_nic*,int ,int ,int ) ;
 int efx_mcdi_ev_death (struct efx_nic*,int ) ;
 int efx_mcdi_process_link_change (struct efx_nic*,int *) ;
 int efx_mcdi_sensor_event (struct efx_nic*,int *) ;
 int efx_ptp_event (struct efx_nic*,int *) ;
 int efx_sriov_flr (struct efx_nic*,int ) ;
 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*,int) ;
 int netif_info (struct efx_nic*,int ,int ,char*,...) ;
 int wol ;

void efx_mcdi_process_event(struct efx_channel *channel,
       efx_qword_t *event)
{
 struct efx_nic *efx = channel->efx;
 int code = EFX_QWORD_FIELD(*event, MCDI_EVENT_CODE);
 u32 data = EFX_QWORD_FIELD(*event, MCDI_EVENT_DATA);

 switch (code) {
 case 139:
  netif_err(efx, hw, efx->net_dev,
     "MC watchdog or assertion failure at 0x%x\n", data);
  efx_mcdi_ev_death(efx, EINTR);
  break;

 case 134:
  netif_info(efx, wol, efx->net_dev, "MCDI PM event.\n");
  break;

 case 138:
  efx_mcdi_ev_cpl(efx,
    MCDI_EVENT_FIELD(*event, CMDDONE_SEQ),
    MCDI_EVENT_FIELD(*event, CMDDONE_DATALEN),
    MCDI_EVENT_FIELD(*event, CMDDONE_ERRNO));
  break;

 case 136:
  efx_mcdi_process_link_change(efx, event);
  break;
 case 128:
  efx_mcdi_sensor_event(efx, event);
  break;
 case 129:
  netif_info(efx, hw, efx->net_dev,
      "MC Scheduler error address=0x%x\n", data);
  break;
 case 130:
  netif_info(efx, hw, efx->net_dev, "MC Reboot\n");
  efx_mcdi_ev_death(efx, EIO);
  break;
 case 135:

  break;
 case 137:
  efx_sriov_flr(efx, MCDI_EVENT_FIELD(*event, FLR_VF));
  break;
 case 131:
 case 133:
 case 132:
  efx_ptp_event(efx, event);
  break;

 default:
  netif_err(efx, hw, efx->net_dev, "Unknown MCDI event 0x%x\n",
     code);
 }
}
