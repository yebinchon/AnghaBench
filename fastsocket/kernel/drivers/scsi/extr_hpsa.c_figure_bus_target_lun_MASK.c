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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct hpsa_scsi_dev_t {int dummy; } ;
struct ctlr_info {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpsa_scsi_dev_t*,int,int,int) ; 
 scalar_t__ FUNC1 (struct ctlr_info*,struct hpsa_scsi_dev_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ctlr_info *h,
	u8 *lunaddrbytes, struct hpsa_scsi_dev_t *device)
{
	u32 lunid = FUNC4(*((__le32 *) lunaddrbytes));

	if (!FUNC3(lunaddrbytes)) {
		/* physical device, target and lun filled in later */
		if (FUNC2(lunaddrbytes))
			FUNC0(device, 3, 0, lunid & 0x3fff);
		else
			/* defer target, lun assignment for physical devices */
			FUNC0(device, 2, -1, -1);
		return;
	}
	/* It's a logical device */
	if (FUNC1(h, device)) {
		/* external target way, put logicals on bus 1
		 * and match target/lun numbers box
		 * reports, other smart array, bus 0, target 0, match lunid
		 */
		FUNC0(device,
			1, (lunid >> 16) & 0x3fff, lunid & 0x00ff);
		return;
	}
	FUNC0(device, 0, 0, lunid & 0x3fff);
}