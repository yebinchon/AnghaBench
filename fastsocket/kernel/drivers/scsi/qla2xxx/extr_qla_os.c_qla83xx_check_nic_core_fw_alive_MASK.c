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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  QLA83XX_FW_HEARTBEAT ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 

__attribute__((used)) static int
FUNC6(scsi_qla_host_t *base_vha)
{
	int rval = QLA_SUCCESS;
	unsigned long heart_beat_wait = jiffies + (1 * HZ);
	uint32_t heart_beat_counter1, heart_beat_counter2;

	do {
		if (FUNC5(jiffies, heart_beat_wait)) {
			FUNC1(ql_dbg_p3p, base_vha, 0xb07c,
			    "Nic Core f/w is not alive.\n");
			rval = QLA_FUNCTION_FAILED;
			break;
		}

		FUNC2(base_vha, 0);
		FUNC4(base_vha, QLA83XX_FW_HEARTBEAT,
		    &heart_beat_counter1);
		FUNC3(base_vha, 0);
		FUNC0(100);
		FUNC2(base_vha, 0);
		FUNC4(base_vha, QLA83XX_FW_HEARTBEAT,
		    &heart_beat_counter2);
		FUNC3(base_vha, 0);
	} while (heart_beat_counter1 == heart_beat_counter2);

	return rval;
}