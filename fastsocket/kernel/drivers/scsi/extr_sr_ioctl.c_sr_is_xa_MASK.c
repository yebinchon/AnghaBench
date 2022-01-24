#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ cdi; scalar_t__ ms_offset; } ;
typedef  TYPE_2__ Scsi_CD ;

/* Variables and functions */
 int /*<<< orphan*/  CD_FRAMESIZE_RAW1 ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  xa_test ; 

int FUNC5(Scsi_CD *cd)
{
	unsigned char *raw_sector;
	int is_xa;

	if (!xa_test)
		return 0;

	raw_sector = FUNC2(2048, GFP_KERNEL | FUNC0(cd));
	if (!raw_sector)
		return -ENOMEM;
	if (0 == FUNC4(cd, cd->ms_offset + 16,
				CD_FRAMESIZE_RAW1, raw_sector)) {
		is_xa = (raw_sector[3] == 0x02) ? 1 : 0;
	} else {
		/* read a raw sector failed for some reason. */
		is_xa = -1;
	}
	FUNC1(raw_sector);
#ifdef DEBUG
	printk("%s: sr_is_xa: %d\n", cd->cdi.name, is_xa);
#endif
	return is_xa;
}