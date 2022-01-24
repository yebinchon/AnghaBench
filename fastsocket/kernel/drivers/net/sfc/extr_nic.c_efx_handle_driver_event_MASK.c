#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct efx_nic {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rx_reset; } ;
struct efx_channel {int /*<<< orphan*/  channel; struct efx_nic* efx; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int EFX_VI_BASE ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
#define  FSE_AA_RX_RECOVER_EV 136 
#define  FSE_AZ_EVQ_INIT_DONE_EV 135 
#define  FSE_AZ_RX_DESCQ_FLS_DONE_EV 134 
#define  FSE_AZ_SRM_UPD_DONE_EV 133 
#define  FSE_AZ_TIMER_EV 132 
#define  FSE_AZ_TX_DESCQ_FLS_DONE_EV 131 
#define  FSE_AZ_WAKE_UP_EV 130 
#define  FSE_BZ_RX_DSC_ERROR_EV 129 
#define  FSE_BZ_TX_DSC_ERROR_EV 128 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_SUBCODE ; 
 int /*<<< orphan*/  FSF_AZ_DRIVER_EV_SUBDATA ; 
 int /*<<< orphan*/  RESET_TYPE_DISABLE ; 
 int /*<<< orphan*/  RESET_TYPE_RX_DESC_FETCH ; 
 int /*<<< orphan*/  RESET_TYPE_RX_RECOVERY ; 
 int /*<<< orphan*/  RESET_TYPE_TX_DESC_FETCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static void
FUNC12(struct efx_channel *channel, efx_qword_t *event)
{
	struct efx_nic *efx = channel->efx;
	unsigned int ev_sub_code;
	unsigned int ev_sub_data;

	ev_sub_code = FUNC0(*event, FSF_AZ_DRIVER_EV_SUBCODE);
	ev_sub_data = FUNC0(*event, FSF_AZ_DRIVER_EV_SUBDATA);

	switch (ev_sub_code) {
	case FSE_AZ_TX_DESCQ_FLS_DONE_EV:
		FUNC11(efx, hw, efx->net_dev, "channel %d TXQ %d flushed\n",
			   channel->channel, ev_sub_data);
		FUNC4(efx, event);
		FUNC8(efx, event);
		break;
	case FSE_AZ_RX_DESCQ_FLS_DONE_EV:
		FUNC11(efx, hw, efx->net_dev, "channel %d RXQ %d flushed\n",
			   channel->channel, ev_sub_data);
		FUNC3(efx, event);
		FUNC7(efx, event);
		break;
	case FSE_AZ_EVQ_INIT_DONE_EV:
		FUNC9(efx, hw, efx->net_dev,
			  "channel %d EVQ %d initialised\n",
			  channel->channel, ev_sub_data);
		break;
	case FSE_AZ_SRM_UPD_DONE_EV:
		FUNC11(efx, hw, efx->net_dev,
			   "channel %d SRAM update done\n", channel->channel);
		break;
	case FSE_AZ_WAKE_UP_EV:
		FUNC11(efx, hw, efx->net_dev,
			   "channel %d RXQ %d wakeup event\n",
			   channel->channel, ev_sub_data);
		break;
	case FSE_AZ_TIMER_EV:
		FUNC11(efx, hw, efx->net_dev,
			   "channel %d RX queue %d timer expired\n",
			   channel->channel, ev_sub_data);
		break;
	case FSE_AA_RX_RECOVER_EV:
		FUNC10(efx, rx_err, efx->net_dev,
			  "channel %d seen DRIVER RX_RESET event. "
			"Resetting.\n", channel->channel);
		FUNC2(&efx->rx_reset);
		FUNC5(efx,
				   FUNC1(efx) ?
				   RESET_TYPE_RX_RECOVERY :
				   RESET_TYPE_DISABLE);
		break;
	case FSE_BZ_RX_DSC_ERROR_EV:
		if (ev_sub_data < EFX_VI_BASE) {
			FUNC10(efx, rx_err, efx->net_dev,
				  "RX DMA Q %d reports descriptor fetch error."
				  " RX Q %d is disabled.\n", ev_sub_data,
				  ev_sub_data);
			FUNC5(efx, RESET_TYPE_RX_DESC_FETCH);
		} else
			FUNC6(efx, ev_sub_data);
		break;
	case FSE_BZ_TX_DSC_ERROR_EV:
		if (ev_sub_data < EFX_VI_BASE) {
			FUNC10(efx, tx_err, efx->net_dev,
				  "TX DMA Q %d reports descriptor fetch error."
				  " TX Q %d is disabled.\n", ev_sub_data,
				  ev_sub_data);
			FUNC5(efx, RESET_TYPE_TX_DESC_FETCH);
		} else
			FUNC6(efx, ev_sub_data);
		break;
	default:
		FUNC11(efx, hw, efx->net_dev,
			   "channel %d unknown driver event code %d "
			   "data %04x\n", channel->channel, ev_sub_code,
			   ev_sub_data);
		break;
	}
}