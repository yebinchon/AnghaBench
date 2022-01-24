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
struct mirror_set {int nr_mirrors; int /*<<< orphan*/ * mirror; } ;
struct dm_region {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DM_RAID1_SYNC_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dm_region*,int) ; 
 struct mirror_set* FUNC2 (struct dm_region*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct mirror_set*) ; 
 scalar_t__ FUNC5 (int,unsigned long*) ; 

__attribute__((used)) static void FUNC6(int read_err, unsigned long write_err,
			      void *context)
{
	struct dm_region *reg = context;
	struct mirror_set *ms = FUNC2(reg);
	int m, bit = 0;

	if (read_err) {
		/* Read error means the failure of default mirror. */
		FUNC0("Unable to read primary mirror during recovery");
		FUNC3(FUNC4(ms), DM_RAID1_SYNC_ERROR);
	}

	if (write_err) {
		FUNC0("Write error during recovery (error = 0x%lx)",
			    write_err);
		/*
		 * Bits correspond to devices (excluding default mirror).
		 * The default mirror cannot change during recovery.
		 */
		for (m = 0; m < ms->nr_mirrors; m++) {
			if (&ms->mirror[m] == FUNC4(ms))
				continue;
			if (FUNC5(bit, &write_err))
				FUNC3(ms->mirror + m,
					    DM_RAID1_SYNC_ERROR);
			bit++;
		}
	}

	FUNC1(reg, !(read_err || write_err));
}