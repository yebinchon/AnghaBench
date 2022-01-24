#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct qla_hw_data {scalar_t__ portnum; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_7 ; 
 int /*<<< orphan*/  QLA83XX_DRIVER_LOCKID ; 
 int /*<<< orphan*/  QLA83XX_DRIVER_UNLOCK ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(scsi_qla_host_t *base_vha, uint16_t requester_id)
{
	uint16_t options = (requester_id << 15) | BIT_7, retry;
	uint32_t data;
	struct qla_hw_data *ha = base_vha->hw;

	/* IDC-unlock implementation using driver-unlock/lock-id
	 * remote registers
	 */
	retry = 0;
retry_unlock:
	if (FUNC2(base_vha, QLA83XX_DRIVER_LOCKID, &data)
	    == QLA_SUCCESS) {
		if (data == ha->portnum) {
			FUNC2(base_vha, QLA83XX_DRIVER_UNLOCK, &data);
			/* Clearing lock-id by setting 0xff */
			FUNC4(base_vha, QLA83XX_DRIVER_LOCKID, 0xff);
		} else if (retry < 10) {
			/* SV: XXX: IDC unlock retrying needed here? */

			/* Retry for IDC-unlock */
			FUNC3();
			retry++;
			FUNC0(ql_dbg_p3p, base_vha, 0xb064,
			    "Failed to release IDC lock, retyring=%d\n", retry);
			goto retry_unlock;
		}
	} else if (retry < 10) {
		/* Retry for IDC-unlock */
		FUNC3();
		retry++;
		FUNC0(ql_dbg_p3p, base_vha, 0xb065,
		    "Failed to read drv-lockid, retyring=%d\n", retry);
		goto retry_unlock;
	}

	return;

	/* XXX: IDC-unlock implementation using access-control mbx */
	retry = 0;
retry_unlock2:
	if (FUNC1(base_vha, options, 0, 0, NULL)) {
		if (retry < 10) {
			/* Retry for IDC-unlock */
			FUNC3();
			retry++;
			FUNC0(ql_dbg_p3p, base_vha, 0xb066,
			    "Failed to release IDC lock, retyring=%d\n", retry);
			goto retry_unlock2;
		}
	}

	return;
}