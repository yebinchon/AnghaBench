#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  int u16 ;
struct pm8001_ioctl_payload {int minor_function; int length; int* func_specific; scalar_t__ offset; } ;
struct pm8001_hba_info {scalar_t__ chip_id; int* sas_addr; TYPE_2__* phy; TYPE_1__* chip; int /*<<< orphan*/ * nvmd_completion; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_nvmd_req ) (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;} ;
struct TYPE_5__ {int dev_sas_addr; } ;
struct TYPE_4__ {int n_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 TYPE_3__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 scalar_t__ chip_8001 ; 
 int /*<<< orphan*/  completion ; 
 int FUNC2 (scalar_t__) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pm8001_hba_info *pm8001_ha)
{
	u8 i, j;
#ifdef PM8001_READ_VPD
	/* For new SPC controllers WWN is stored in flash vpd
	*  For SPC/SPCve controllers WWN is stored in EEPROM
	*  For Older SPC WWN is stored in NVMD
	*/
	DECLARE_COMPLETION_ONSTACK(completion);
	struct pm8001_ioctl_payload payload;
	u16 deviceid;
	pci_read_config_word(pm8001_ha->pdev, PCI_DEVICE_ID, &deviceid);
	pm8001_ha->nvmd_completion = &completion;

	if (pm8001_ha->chip_id == chip_8001) {
		if (deviceid == 0x8081) {
			payload.minor_function = 4;
			payload.length = 4096;
		} else {
			payload.minor_function = 0;
			payload.length = 128;
		}
	} else {
		payload.minor_function = 1;
		payload.length = 4096;
	}
	payload.offset = 0;
	payload.func_specific = kzalloc(payload.length, GFP_KERNEL);
	PM8001_CHIP_DISP->get_nvmd_req(pm8001_ha, &payload);
	wait_for_completion(&completion);

	for (i = 0, j = 0; i <= 7; i++, j++) {
		if (pm8001_ha->chip_id == chip_8001) {
			if (deviceid == 0x8081)
				pm8001_ha->sas_addr[j] =
					payload.func_specific[0x704 + i];
		} else
			pm8001_ha->sas_addr[j] =
					payload.func_specific[0x804 + i];
	}

	for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
		memcpy(&pm8001_ha->phy[i].dev_sas_addr,
			pm8001_ha->sas_addr, SAS_ADDR_SIZE);
		PM8001_INIT_DBG(pm8001_ha,
			pm8001_printk("phy %d sas_addr = %016llx\n", i,
			pm8001_ha->phy[i].dev_sas_addr));
	}
#else
	for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
		pm8001_ha->phy[i].dev_sas_addr = 0x50010c600047f9d0ULL;
		pm8001_ha->phy[i].dev_sas_addr =
			FUNC2((u64)
				(*(u64 *)&pm8001_ha->phy[i].dev_sas_addr));
	}
	FUNC4(pm8001_ha->sas_addr, &pm8001_ha->phy[0].dev_sas_addr,
		SAS_ADDR_SIZE);
#endif
}