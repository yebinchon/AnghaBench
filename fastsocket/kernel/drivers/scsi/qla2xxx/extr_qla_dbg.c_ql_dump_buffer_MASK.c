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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(uint32_t level, scsi_qla_host_t *vha, int32_t id,
	uint8_t *b, uint32_t size)
{
	uint32_t cnt;
	uint8_t c;

	if (!FUNC2(level))
		return;

	FUNC1(level, vha, id, " 0   1   2   3   4   5   6   7   8   "
	    "9  Ah  Bh  Ch  Dh  Eh  Fh\n");
	FUNC1(level, vha, id, "----------------------------------"
	    "----------------------------\n");

	FUNC1(level, vha, id, " ");
	for (cnt = 0; cnt < size;) {
		c = *b++;
		FUNC0("%02x", (uint32_t) c);
		cnt++;
		if (!(cnt % 16))
			FUNC0("\n");
		else
			FUNC0("  ");
	}
	if (cnt % 16)
		FUNC1(level, vha, id, "\n");
}