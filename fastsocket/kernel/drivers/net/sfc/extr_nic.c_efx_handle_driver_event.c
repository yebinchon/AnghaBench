
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; int rx_reset; } ;
struct efx_channel {int channel; struct efx_nic* efx; } ;
typedef int efx_qword_t ;


 unsigned int EFX_QWORD_FIELD (int ,int ) ;
 unsigned int EFX_VI_BASE ;
 int EFX_WORKAROUND_6555 (struct efx_nic*) ;
 int FSF_AZ_DRIVER_EV_SUBCODE ;
 int FSF_AZ_DRIVER_EV_SUBDATA ;
 int RESET_TYPE_DISABLE ;
 int RESET_TYPE_RX_DESC_FETCH ;
 int RESET_TYPE_RX_RECOVERY ;
 int RESET_TYPE_TX_DESC_FETCH ;
 int atomic_inc (int *) ;
 int efx_handle_rx_flush_done (struct efx_nic*,int *) ;
 int efx_handle_tx_flush_done (struct efx_nic*,int *) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int efx_sriov_desc_fetch_err (struct efx_nic*,unsigned int) ;
 int efx_sriov_rx_flush_done (struct efx_nic*,int *) ;
 int efx_sriov_tx_flush_done (struct efx_nic*,int *) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,unsigned int) ;
 int netif_err (struct efx_nic*,int ,int ,char*,unsigned int,...) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,int ,...) ;
 int rx_err ;
 int tx_err ;

__attribute__((used)) static void
efx_handle_driver_event(struct efx_channel *channel, efx_qword_t *event)
{
 struct efx_nic *efx = channel->efx;
 unsigned int ev_sub_code;
 unsigned int ev_sub_data;

 ev_sub_code = EFX_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_SUBCODE);
 ev_sub_data = EFX_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_SUBDATA);

 switch (ev_sub_code) {
 case 131:
  netif_vdbg(efx, hw, efx->net_dev, "channel %d TXQ %d flushed\n",
      channel->channel, ev_sub_data);
  efx_handle_tx_flush_done(efx, event);
  efx_sriov_tx_flush_done(efx, event);
  break;
 case 134:
  netif_vdbg(efx, hw, efx->net_dev, "channel %d RXQ %d flushed\n",
      channel->channel, ev_sub_data);
  efx_handle_rx_flush_done(efx, event);
  efx_sriov_rx_flush_done(efx, event);
  break;
 case 135:
  netif_dbg(efx, hw, efx->net_dev,
     "channel %d EVQ %d initialised\n",
     channel->channel, ev_sub_data);
  break;
 case 133:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d SRAM update done\n", channel->channel);
  break;
 case 130:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d RXQ %d wakeup event\n",
      channel->channel, ev_sub_data);
  break;
 case 132:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d RX queue %d timer expired\n",
      channel->channel, ev_sub_data);
  break;
 case 136:
  netif_err(efx, rx_err, efx->net_dev,
     "channel %d seen DRIVER RX_RESET event. "
   "Resetting.\n", channel->channel);
  atomic_inc(&efx->rx_reset);
  efx_schedule_reset(efx,
       EFX_WORKAROUND_6555(efx) ?
       RESET_TYPE_RX_RECOVERY :
       RESET_TYPE_DISABLE);
  break;
 case 129:
  if (ev_sub_data < EFX_VI_BASE) {
   netif_err(efx, rx_err, efx->net_dev,
      "RX DMA Q %d reports descriptor fetch error."
      " RX Q %d is disabled.\n", ev_sub_data,
      ev_sub_data);
   efx_schedule_reset(efx, RESET_TYPE_RX_DESC_FETCH);
  } else
   efx_sriov_desc_fetch_err(efx, ev_sub_data);
  break;
 case 128:
  if (ev_sub_data < EFX_VI_BASE) {
   netif_err(efx, tx_err, efx->net_dev,
      "TX DMA Q %d reports descriptor fetch error."
      " TX Q %d is disabled.\n", ev_sub_data,
      ev_sub_data);
   efx_schedule_reset(efx, RESET_TYPE_TX_DESC_FETCH);
  } else
   efx_sriov_desc_fetch_err(efx, ev_sub_data);
  break;
 default:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d unknown driver event code %d "
      "data %04x\n", channel->channel, ev_sub_code,
      ev_sub_data);
  break;
 }
}
