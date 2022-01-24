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
typedef  size_t u32 ;
struct pm8001_hba_info {struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {size_t device_id; int /*<<< orphan*/  dcompletion; } ;
struct pm8001_ccb_info {int ccb_tag; int /*<<< orphan*/ * task; struct pm8001_device* device; } ;
struct dev_reg_resp {int /*<<< orphan*/  device_id; int /*<<< orphan*/  status; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
#define  DEVREG_FAILURE_DEVICE_ALREADY_REGISTERED 135 
#define  DEVREG_FAILURE_DEVICE_TYPE_NOT_VALID 134 
#define  DEVREG_FAILURE_INVALID_PHY_ID 133 
#define  DEVREG_FAILURE_OUT_OF_RESOURCE 132 
#define  DEVREG_FAILURE_PHY_ID_ALREADY_REGISTERED 131 
#define  DEVREG_FAILURE_PORT_ID_OUT_OF_RANGE 130 
#define  DEVREG_FAILURE_PORT_NOT_VALID_STATE 129 
#define  DEVREG_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	u32 status;
	u32 device_id;
	u32 htag;
	struct pm8001_ccb_info *ccb;
	struct pm8001_device *pm8001_dev;
	struct dev_reg_resp *registerRespPayload =
		(struct dev_reg_resp *)(piomb + 4);

	htag = FUNC2(registerRespPayload->tag);
	ccb = &pm8001_ha->ccb_info[htag];
	pm8001_dev = ccb->device;
	status = FUNC2(registerRespPayload->status);
	device_id = FUNC2(registerRespPayload->device_id);
	FUNC0(pm8001_ha,
		FUNC4(" register device is status = %d\n", status));
	switch (status) {
	case DEVREG_SUCCESS:
		FUNC0(pm8001_ha, FUNC4("DEVREG_SUCCESS\n"));
		pm8001_dev->device_id = device_id;
		break;
	case DEVREG_FAILURE_OUT_OF_RESOURCE:
		FUNC0(pm8001_ha,
			FUNC4("DEVREG_FAILURE_OUT_OF_RESOURCE\n"));
		break;
	case DEVREG_FAILURE_DEVICE_ALREADY_REGISTERED:
		FUNC0(pm8001_ha,
		   FUNC4("DEVREG_FAILURE_DEVICE_ALREADY_REGISTERED\n"));
		break;
	case DEVREG_FAILURE_INVALID_PHY_ID:
		FUNC0(pm8001_ha,
			FUNC4("DEVREG_FAILURE_INVALID_PHY_ID\n"));
		break;
	case DEVREG_FAILURE_PHY_ID_ALREADY_REGISTERED:
		FUNC0(pm8001_ha,
		   FUNC4("DEVREG_FAILURE_PHY_ID_ALREADY_REGISTERED\n"));
		break;
	case DEVREG_FAILURE_PORT_ID_OUT_OF_RANGE:
		FUNC0(pm8001_ha,
			FUNC4("DEVREG_FAILURE_PORT_ID_OUT_OF_RANGE\n"));
		break;
	case DEVREG_FAILURE_PORT_NOT_VALID_STATE:
		FUNC0(pm8001_ha,
			FUNC4("DEVREG_FAILURE_PORT_NOT_VALID_STATE\n"));
		break;
	case DEVREG_FAILURE_DEVICE_TYPE_NOT_VALID:
		FUNC0(pm8001_ha,
		       FUNC4("DEVREG_FAILURE_DEVICE_TYPE_NOT_VALID\n"));
		break;
	default:
		FUNC0(pm8001_ha,
		 FUNC4("DEVREG_FAILURE_DEVICE_TYPE_NOT_UNSORPORTED\n"));
		break;
	}
	FUNC1(pm8001_dev->dcompletion);
	ccb->task = NULL;
	ccb->ccb_tag = 0xFFFFFFFF;
	FUNC3(pm8001_ha, htag);
	return 0;
}