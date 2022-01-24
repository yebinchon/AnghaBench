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
typedef  int u8 ;
typedef  int u16 ;
struct ata_scsi_args {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 

__attribute__((used)) static unsigned int FUNC5(struct ata_scsi_args *args, u8 *rbuf)
{
	u16 min_io_sectors;

	rbuf[1] = 0xb0;
	rbuf[3] = 0x3c;		/* required VPD size with unmap support */

	/*
	 * Optimal transfer length granularity.
	 *
	 * This is always one physical block, but for disks with a smaller
	 * logical than physical sector size we need to figure out what the
	 * latter is.
	 */
	min_io_sectors = 1 << FUNC1(args->id);
	FUNC2(min_io_sectors, &rbuf[6]);

	/*
	 * Optimal unmap granularity.
	 *
	 * The ATA spec doesn't even know about a granularity or alignment
	 * for the TRIM command.  We can leave away most of the unmap related
	 * VPD page entries, but we have specifify a granularity to signal
	 * that we support some form of unmap - in thise case via WRITE SAME
	 * with the unmap bit set.
	 */
	if (FUNC0(args->id)) {
		FUNC4(65535 * 512 / 8, &rbuf[36]);
		FUNC3(1, &rbuf[28]);
	}

	return 0;
}