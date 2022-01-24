#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct swStat {int mem_allocated; int mem_freed; int /*<<< orphan*/  mem_alloc_fail_cnt; } ;
struct TYPE_4__ {TYPE_1__* stats_info; } ;
struct s2io_nic {scalar_t__ device_type; scalar_t__* product_name; scalar_t__* serial_num; int /*<<< orphan*/  pdev; TYPE_2__ mac_control; } ;
struct TYPE_3__ {struct swStat sw_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DBG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int VPD_STRING_LEN ; 
 scalar_t__ XFRAME_II_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,char*) ; 

__attribute__((used)) static void FUNC11(struct s2io_nic *nic)
{
	u8 *vpd_data;
	u8 data;
	int i = 0, cnt, len, fail = 0;
	int vpd_addr = 0x80;
	struct swStat *swstats = &nic->mac_control.stats_info->sw_stat;

	if (nic->device_type == XFRAME_II_DEVICE) {
		FUNC10(nic->product_name, "Xframe II 10GbE network adapter");
		vpd_addr = 0x80;
	} else {
		FUNC10(nic->product_name, "Xframe I 10GbE network adapter");
		vpd_addr = 0x50;
	}
	FUNC10(nic->serial_num, "NOT AVAILABLE");

	vpd_data = FUNC2(256, GFP_KERNEL);
	if (!vpd_data) {
		swstats->mem_alloc_fail_cnt++;
		return;
	}
	swstats->mem_allocated += 256;

	for (i = 0; i < 256; i += 4) {
		FUNC9(nic->pdev, (vpd_addr + 2), i);
		FUNC7(nic->pdev,  (vpd_addr + 2), &data);
		FUNC9(nic->pdev, (vpd_addr + 3), 0);
		for (cnt = 0; cnt < 5; cnt++) {
			FUNC6(2);
			FUNC7(nic->pdev, (vpd_addr + 3), &data);
			if (data == 0x80)
				break;
		}
		if (cnt >= 5) {
			FUNC0(ERR_DBG, "Read of VPD data failed\n");
			fail = 1;
			break;
		}
		FUNC8(nic->pdev,  (vpd_addr + 4),
				      (u32 *)&vpd_data[i]);
	}

	if (!fail) {
		/* read serial number of adapter */
		for (cnt = 0; cnt < 252; cnt++) {
			if ((vpd_data[cnt] == 'S') &&
			    (vpd_data[cnt+1] == 'N')) {
				len = vpd_data[cnt+2];
				if (len < FUNC5(VPD_STRING_LEN, 256-cnt-2)) {
					FUNC3(nic->serial_num,
					       &vpd_data[cnt + 3],
					       len);
					FUNC4(nic->serial_num+len,
					       0,
					       VPD_STRING_LEN-len);
					break;
				}
			}
		}
	}

	if ((!fail) && (vpd_data[1] < VPD_STRING_LEN)) {
		len = vpd_data[1];
		FUNC3(nic->product_name, &vpd_data[3], len);
		nic->product_name[len] = 0;
	}
	FUNC1(vpd_data);
	swstats->mem_freed += 256;
}