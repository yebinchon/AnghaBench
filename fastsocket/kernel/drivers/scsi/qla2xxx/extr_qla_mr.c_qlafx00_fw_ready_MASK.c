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
typedef  scalar_t__ uint32_t ;
typedef  unsigned long uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  init_done; } ;
struct TYPE_7__ {TYPE_1__ flags; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FSTATE_FX00_INITIALIZED ; 
 unsigned long HZ ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int FUNC2 (TYPE_2__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

int
FUNC4(scsi_qla_host_t *vha)
{
	int		rval;
	unsigned long	wtime;
	uint16_t	wait_time;	/* Wait time if loop is coming ready */
	uint32_t	state[5];

	rval = QLA_SUCCESS;

	wait_time = 10;

	/* wait time before firmware ready */
	wtime = jiffies + (wait_time * HZ);

	/* Wait for ISP to finish init */
	if (!vha->flags.init_done)
		FUNC1(ql_dbg_init, vha, 0x013a,
		    "Waiting for init to complete...\n");

	do {
		rval = FUNC2(vha, state);

		if (rval == QLA_SUCCESS) {
			if (state[0] == FSTATE_FX00_INITIALIZED) {
				FUNC1(ql_dbg_init, vha, 0x013b,
				    "fw_state=%x\n", state[0]);
				rval = QLA_SUCCESS;
					break;
			}
		}
		rval = QLA_FUNCTION_FAILED;

		if (FUNC3(jiffies, wtime))
			break;

		/* Delay for a while */
		FUNC0(500);

		FUNC1(ql_dbg_init, vha, 0x013c,
		    "fw_state=%x curr time=%lx.\n", state[0], jiffies);
	} while (1);


	if (rval)
		FUNC1(ql_dbg_init, vha, 0x013d,
		    "Firmware ready **** FAILED ****.\n");
	else
		FUNC1(ql_dbg_init, vha, 0x013e,
		    "Firmware ready **** SUCCESS ****.\n");

	return rval;
}