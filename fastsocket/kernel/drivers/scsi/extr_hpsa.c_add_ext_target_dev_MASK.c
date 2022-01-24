#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct hpsa_scsi_dev_t {unsigned char target; scalar_t__ lun; int /*<<< orphan*/  bus; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_EXT_TARGETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsa_scsi_dev_t*,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ctlr_info*,unsigned char*,struct hpsa_scsi_dev_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ctlr_info*,struct hpsa_scsi_dev_t*) ; 
 scalar_t__ FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char,unsigned long*) ; 
 scalar_t__ FUNC9 (unsigned char,unsigned long*) ; 

__attribute__((used)) static int FUNC10(struct ctlr_info *h,
	struct hpsa_scsi_dev_t *tmpdevice,
	struct hpsa_scsi_dev_t *this_device, u8 *lunaddrbytes,
	unsigned long lunzerobits[], int *n_ext_target_devs)
{
	unsigned char scsi3addr[8];

	if (FUNC9(tmpdevice->target, lunzerobits))
		return 0; /* There is already a lun 0 on this target. */

	if (!FUNC5(lunaddrbytes))
		return 0; /* It's the logical targets that may lack lun 0. */

	if (!FUNC3(h, tmpdevice))
		return 0; /* Only external target devices have this problem. */

	if (tmpdevice->lun == 0) /* if lun is 0, then we have a lun 0. */
		return 0;

	FUNC7(scsi3addr, 0, 8);
	scsi3addr[3] = tmpdevice->target;
	if (FUNC4(scsi3addr))
		return 0; /* Don't add the RAID controller here. */

	if (FUNC6(h))
		return 0; /* p1210m doesn't need to do this. */

	if (*n_ext_target_devs >= MAX_EXT_TARGETS) {
		FUNC0(&h->pdev->dev, "Maximum number of external "
			"target devices exceeded.  Check your hardware "
			"configuration.");
		return 0;
	}

	if (FUNC2(h, scsi3addr, this_device, NULL))
		return 0;
	(*n_ext_target_devs)++;
	FUNC1(this_device,
				tmpdevice->bus, tmpdevice->target, 0);
	FUNC8(tmpdevice->target, lunzerobits);
	return 1;
}