#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct sas_phy_linkrates {int /*<<< orphan*/  maximum_linkrate; int /*<<< orphan*/  minimum_linkrate; } ;
struct sas_phy {void* phy_reset_problem_count; void* loss_of_dword_sync_count; void* running_disparity_error_count; void* invalid_dword_count; } ;
struct pm8001_hba_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  chip_id; TYPE_3__* io_mem; TYPE_2__* phy; } ;
struct asd_sas_phy {int id; struct sas_phy* phy; TYPE_1__* ha; } ;
typedef  enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_8__ {int /*<<< orphan*/  (* phy_stop_req ) (struct pm8001_hba_info*,int) ;int /*<<< orphan*/  (* phy_ctl_req ) (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* phy_start_req ) (struct pm8001_hba_info*,int) ;} ;
struct TYPE_7__ {scalar_t__ memvirtaddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  phy_state; int /*<<< orphan*/  maximum_linkrate; int /*<<< orphan*/  minimum_linkrate; int /*<<< orphan*/ * enable_completion; } ;
struct TYPE_5__ {struct pm8001_hba_info* lldd_ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  PHY_FUNC_DISABLE 133 
#define  PHY_FUNC_GET_EVENTS 132 
#define  PHY_FUNC_HARD_RESET 131 
#define  PHY_FUNC_LINK_RESET 130 
#define  PHY_FUNC_RELEASE_SPINUP_HOLD 129 
#define  PHY_FUNC_SET_LINK_RATE 128 
 int /*<<< orphan*/  PHY_HARD_RESET ; 
 int /*<<< orphan*/  PHY_LINK_RESET ; 
 TYPE_4__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  chip_8001 ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct asd_sas_phy *sas_phy, enum phy_func func,
	void *funcdata)
{
	int rc = 0, phy_id = sas_phy->id;
	struct pm8001_hba_info *pm8001_ha = NULL;
	struct sas_phy_linkrates *rates;
	FUNC0(completion);
	unsigned long flags;
	pm8001_ha = sas_phy->ha->lldd_ha;
	pm8001_ha->phy[phy_id].enable_completion = &completion;
	switch (func) {
	case PHY_FUNC_SET_LINK_RATE:
		rates = funcdata;
		if (rates->minimum_linkrate) {
			pm8001_ha->phy[phy_id].minimum_linkrate =
				rates->minimum_linkrate;
		}
		if (rates->maximum_linkrate) {
			pm8001_ha->phy[phy_id].maximum_linkrate =
				rates->maximum_linkrate;
		}
		if (pm8001_ha->phy[phy_id].phy_state == 0) {
			PM8001_CHIP_DISP->phy_start_req(pm8001_ha, phy_id);
			FUNC13(&completion);
		}
		PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
					      PHY_LINK_RESET);
		break;
	case PHY_FUNC_HARD_RESET:
		if (pm8001_ha->phy[phy_id].phy_state == 0) {
			PM8001_CHIP_DISP->phy_start_req(pm8001_ha, phy_id);
			FUNC13(&completion);
		}
		PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
					      PHY_HARD_RESET);
		break;
	case PHY_FUNC_LINK_RESET:
		if (pm8001_ha->phy[phy_id].phy_state == 0) {
			PM8001_CHIP_DISP->phy_start_req(pm8001_ha, phy_id);
			FUNC13(&completion);
		}
		PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
					      PHY_LINK_RESET);
		break;
	case PHY_FUNC_RELEASE_SPINUP_HOLD:
		PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
					      PHY_LINK_RESET);
		break;
	case PHY_FUNC_DISABLE:
		PM8001_CHIP_DISP->phy_stop_req(pm8001_ha, phy_id);
		break;
	case PHY_FUNC_GET_EVENTS:
		FUNC3(&pm8001_ha->lock, flags);
		if (pm8001_ha->chip_id == chip_8001) {
			if (-1 == FUNC2(pm8001_ha,
					(phy_id < 4) ? 0x30000 : 0x40000)) {
				FUNC4(&pm8001_ha->lock, flags);
				return -EINVAL;
			}
		}
		{
			struct sas_phy *phy = sas_phy->phy;
			uint32_t *qp = (uint32_t *)(((char *)
				pm8001_ha->io_mem[2].memvirtaddr)
				+ 0x1034 + (0x4000 * (phy_id & 3)));

			phy->invalid_dword_count = qp[0];
			phy->running_disparity_error_count = qp[1];
			phy->loss_of_dword_sync_count = qp[3];
			phy->phy_reset_problem_count = qp[4];
		}
		if (pm8001_ha->chip_id == chip_8001)
			FUNC2(pm8001_ha, 0);
		FUNC4(&pm8001_ha->lock, flags);
		return 0;
	default:
		rc = -EOPNOTSUPP;
	}
	FUNC1(300);
	return rc;
}