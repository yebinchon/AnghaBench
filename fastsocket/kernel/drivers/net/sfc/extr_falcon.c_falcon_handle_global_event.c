
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {int xmac_poll_required; } ;
struct efx_nic {int rx_reset; int net_dev; struct falcon_nic_data* nic_data; } ;
struct efx_channel {int channel; struct efx_nic* efx; } ;
typedef int efx_qword_t ;


 scalar_t__ EFX_QWORD_FIELD (int ,int ) ;
 scalar_t__ EFX_REV_FALCON_A1 ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 scalar_t__ EFX_WORKAROUND_6555 (struct efx_nic*) ;
 int FSF_AA_GLB_EV_RX_RECOVERY ;
 int FSF_AB_GLB_EV_G_PHY0_INTR ;
 int FSF_AB_GLB_EV_XFP_PHY0_INTR ;
 int FSF_AB_GLB_EV_XG_PHY0_INTR ;
 int FSF_BB_GLB_EV_RX_RECOVERY ;
 int FSF_BB_GLB_EV_XG_MGT_INTR ;
 int RESET_TYPE_DISABLE ;
 int RESET_TYPE_RX_RECOVERY ;
 int atomic_inc (int *) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ) ;
 int rx_err ;

__attribute__((used)) static bool
falcon_handle_global_event(struct efx_channel *channel, efx_qword_t *event)
{
 struct efx_nic *efx = channel->efx;
 struct falcon_nic_data *nic_data = efx->nic_data;

 if (EFX_QWORD_FIELD(*event, FSF_AB_GLB_EV_G_PHY0_INTR) ||
     EFX_QWORD_FIELD(*event, FSF_AB_GLB_EV_XG_PHY0_INTR) ||
     EFX_QWORD_FIELD(*event, FSF_AB_GLB_EV_XFP_PHY0_INTR))

  return 1;

 if ((efx_nic_rev(efx) == EFX_REV_FALCON_B0) &&
     EFX_QWORD_FIELD(*event, FSF_BB_GLB_EV_XG_MGT_INTR)) {
  nic_data->xmac_poll_required = 1;
  return 1;
 }

 if (efx_nic_rev(efx) <= EFX_REV_FALCON_A1 ?
     EFX_QWORD_FIELD(*event, FSF_AA_GLB_EV_RX_RECOVERY) :
     EFX_QWORD_FIELD(*event, FSF_BB_GLB_EV_RX_RECOVERY)) {
  netif_err(efx, rx_err, efx->net_dev,
     "channel %d seen global RX_RESET event. Resetting.\n",
     channel->channel);

  atomic_inc(&efx->rx_reset);
  efx_schedule_reset(efx, EFX_WORKAROUND_6555(efx) ?
       RESET_TYPE_RX_RECOVERY : RESET_TYPE_DISABLE);
  return 1;
 }

 return 0;
}
