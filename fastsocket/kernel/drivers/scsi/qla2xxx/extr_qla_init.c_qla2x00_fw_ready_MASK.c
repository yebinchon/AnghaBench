#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint16_t ;
struct TYPE_12__ {scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {int retry_count; int login_timeout; TYPE_2__ flags; int /*<<< orphan*/  r_a_tov; } ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_11__ {int /*<<< orphan*/  init_done; } ;
struct TYPE_13__ {int device_flags; int /*<<< orphan*/  loop_down_timer; TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;

/* Variables and functions */
 int DFLG_NO_CABLE ; 
 unsigned long FSTATE_LOGGED_IN ; 
 unsigned long FSTATE_LOSS_OF_SYNC ; 
 unsigned long FSTATE_READY ; 
 unsigned long FSTATE_WAITING_FOR_VERIFY ; 
 unsigned long HZ ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC7 (TYPE_3__*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC12(scsi_qla_host_t *vha)
{
	int		rval;
	unsigned long	wtime, mtime, cs84xx_time;
	uint16_t	min_wait;	/* Minimum wait time if loop is down */
	uint16_t	wait_time;	/* Wait time if loop is coming ready */
	uint16_t	state[5];
	struct qla_hw_data *ha = vha->hw;

	if (FUNC1(vha->hw))
		return FUNC10(vha);

	rval = QLA_SUCCESS;

	/* 60 seconds for loop down. */
	min_wait = 60;

	/*
	 * Firmware should take at most one RATOV to login, plus 5 seconds for
	 * our own processing.
	 */
	if ((wait_time = (ha->retry_count*ha->login_timeout) + 5) < min_wait) {
		wait_time = min_wait;
	}

	/* Min wait time if loop down */
	mtime = jiffies + (min_wait * HZ);

	/* wait time before firmware ready */
	wtime = jiffies + (wait_time * HZ);

	/* Wait for ISP to finish LIP */
	if (!vha->flags.init_done)
		FUNC6(ql_log_info, vha, 0x801e,
		    "Waiting for LIP to complete.\n");

	do {
		FUNC3(state, -1, sizeof(state));
		rval = FUNC7(vha, state);
		if (rval == QLA_SUCCESS) {
			if (state[0] < FSTATE_LOSS_OF_SYNC) {
				vha->device_flags &= ~DFLG_NO_CABLE;
			}
			if (FUNC0(ha) && state[0] != FSTATE_READY) {
				FUNC5(ql_dbg_taskm, vha, 0x801f,
				    "fw_state=%x 84xx=%x.\n", state[0],
				    state[2]);
				if ((state[2] & FSTATE_LOGGED_IN) &&
				     (state[2] & FSTATE_WAITING_FOR_VERIFY)) {
					FUNC5(ql_dbg_taskm, vha, 0x8028,
					    "Sending verify iocb.\n");

					cs84xx_time = jiffies;
					rval = FUNC9(vha);
					if (rval != QLA_SUCCESS) {
						FUNC6(ql_log_warn,
						    vha, 0x8007,
						    "Init chip failed.\n");
						break;
					}

					/* Add time taken to initialize. */
					cs84xx_time = jiffies - cs84xx_time;
					wtime += cs84xx_time;
					mtime += cs84xx_time;
					FUNC5(ql_dbg_taskm, vha, 0x8008,
					    "Increasing wait time by %ld. "
					    "New time %ld.\n", cs84xx_time,
					    wtime);
				}
			} else if (state[0] == FSTATE_READY) {
				FUNC5(ql_dbg_taskm, vha, 0x8037,
				    "F/W Ready - OK.\n");

				FUNC8(vha, &ha->retry_count,
				    &ha->login_timeout, &ha->r_a_tov);

				rval = QLA_SUCCESS;
				break;
			}

			rval = QLA_FUNCTION_FAILED;

			if (FUNC2(&vha->loop_down_timer) &&
			    state[0] != FSTATE_READY) {
				/* Loop down. Timeout on min_wait for states
				 * other than Wait for Login.
				 */
				if (FUNC11(jiffies, mtime)) {
					FUNC6(ql_log_info, vha, 0x8038,
					    "Cable is unplugged...\n");

					vha->device_flags |= DFLG_NO_CABLE;
					break;
				}
			}
		} else {
			/* Mailbox cmd failed. Timeout on min_wait. */
			if (FUNC11(jiffies, mtime) ||
				ha->flags.isp82xx_fw_hung)
				break;
		}

		if (FUNC11(jiffies, wtime))
			break;

		/* Delay for a while */
		FUNC4(500);
	} while (1);

	FUNC5(ql_dbg_taskm, vha, 0x803a,
	    "fw_state=%x (%x, %x, %x, %x) " "curr time=%lx.\n", state[0],
	    state[1], state[2], state[3], state[4], jiffies);

	if (rval && !(vha->device_flags & DFLG_NO_CABLE)) {
		FUNC6(ql_log_warn, vha, 0x803b,
		    "Firmware ready **** FAILED ****.\n");
	}

	return (rval);
}