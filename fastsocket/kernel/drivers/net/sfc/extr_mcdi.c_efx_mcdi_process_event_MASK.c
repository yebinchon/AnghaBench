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
typedef  int u32 ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
struct efx_channel {struct efx_nic* efx; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMDDONE_DATALEN ; 
 int /*<<< orphan*/  CMDDONE_ERRNO ; 
 int /*<<< orphan*/  CMDDONE_SEQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FLR_VF ; 
 int /*<<< orphan*/  MCDI_EVENT_CODE ; 
#define  MCDI_EVENT_CODE_BADSSERT 139 
#define  MCDI_EVENT_CODE_CMDDONE 138 
#define  MCDI_EVENT_CODE_FLR 137 
#define  MCDI_EVENT_CODE_LINKCHANGE 136 
#define  MCDI_EVENT_CODE_MAC_STATS_DMA 135 
#define  MCDI_EVENT_CODE_PMNOTICE 134 
#define  MCDI_EVENT_CODE_PTP_FAULT 133 
#define  MCDI_EVENT_CODE_PTP_PPS 132 
#define  MCDI_EVENT_CODE_PTP_RX 131 
#define  MCDI_EVENT_CODE_REBOOT 130 
#define  MCDI_EVENT_CODE_SCHEDERR 129 
#define  MCDI_EVENT_CODE_SENSOREVT 128 
 int /*<<< orphan*/  MCDI_EVENT_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  wol ; 

void FUNC10(struct efx_channel *channel,
			    efx_qword_t *event)
{
	struct efx_nic *efx = channel->efx;
	int code = FUNC0(*event, MCDI_EVENT_CODE);
	u32 data = FUNC0(*event, MCDI_EVENT_DATA);

	switch (code) {
	case MCDI_EVENT_CODE_BADSSERT:
		FUNC8(efx, hw, efx->net_dev,
			  "MC watchdog or assertion failure at 0x%x\n", data);
		FUNC3(efx, EINTR);
		break;

	case MCDI_EVENT_CODE_PMNOTICE:
		FUNC9(efx, wol, efx->net_dev, "MCDI PM event.\n");
		break;

	case MCDI_EVENT_CODE_CMDDONE:
		FUNC2(efx,
				FUNC1(*event, CMDDONE_SEQ),
				FUNC1(*event, CMDDONE_DATALEN),
				FUNC1(*event, CMDDONE_ERRNO));
		break;

	case MCDI_EVENT_CODE_LINKCHANGE:
		FUNC4(efx, event);
		break;
	case MCDI_EVENT_CODE_SENSOREVT:
		FUNC5(efx, event);
		break;
	case MCDI_EVENT_CODE_SCHEDERR:
		FUNC9(efx, hw, efx->net_dev,
			   "MC Scheduler error address=0x%x\n", data);
		break;
	case MCDI_EVENT_CODE_REBOOT:
		FUNC9(efx, hw, efx->net_dev, "MC Reboot\n");
		FUNC3(efx, EIO);
		break;
	case MCDI_EVENT_CODE_MAC_STATS_DMA:
		/* MAC stats are gather lazily.  We can ignore this. */
		break;
	case MCDI_EVENT_CODE_FLR:
		FUNC7(efx, FUNC1(*event, FLR_VF));
		break;
	case MCDI_EVENT_CODE_PTP_RX:
	case MCDI_EVENT_CODE_PTP_FAULT:
	case MCDI_EVENT_CODE_PTP_PPS:
		FUNC6(efx, event);
		break;

	default:
		FUNC8(efx, hw, efx->net_dev, "Unknown MCDI event 0x%x\n",
			  code);
	}
}