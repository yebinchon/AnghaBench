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
struct hd_i_struct {int special_op; int recalibrate; int /*<<< orphan*/  cyl; scalar_t__ head; int /*<<< orphan*/  sect; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_INIT_DEV_PARAMS ; 
 int NR_HD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct hd_i_struct* hd_info ; 
 int /*<<< orphan*/  FUNC1 (struct hd_i_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) ()) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ reset ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	static int i;

repeat:
	if (reset) {
		reset = 0;
		i = -1;
		FUNC3();
	} else {
		FUNC0();
		if (reset)
			goto repeat;
	}
	if (++i < NR_HD) {
		struct hd_i_struct *disk = &hd_info[i];
		disk->special_op = disk->recalibrate = 1;
		FUNC1(disk, disk->sect, disk->sect, disk->head-1,
			disk->cyl, ATA_CMD_INIT_DEV_PARAMS, &reset_hd);
		if (reset)
			goto repeat;
	} else
		FUNC2();
}