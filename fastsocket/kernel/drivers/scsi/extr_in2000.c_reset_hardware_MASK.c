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
struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;
struct IN2000_hostdata {int default_sx_per; } ;

/* Variables and functions */
 int ASR_INT ; 
 int B_FLAG ; 
 int CTRL_EDI ; 
 int CTRL_IDI ; 
 int CTRL_POLLED ; 
 int /*<<< orphan*/  DEFAULT_SX_OFF ; 
 int /*<<< orphan*/  IO_CARD_RESET ; 
 int /*<<< orphan*/  IO_FIFO_READ ; 
 int /*<<< orphan*/  IO_FIFO_WRITE ; 
 int /*<<< orphan*/  IO_HARDWARE ; 
 int /*<<< orphan*/  IO_LED_OFF ; 
 int /*<<< orphan*/  IO_LED_ON ; 
 int OWNID_EAF ; 
 int OWNID_FS_8 ; 
 int OWNID_RAF ; 
 int FUNC0 () ; 
 int RESET_CARD_AND_BUS ; 
 int TIMEOUT_PERIOD_VALUE ; 
 int WD_CMD_RESET ; 
 int /*<<< orphan*/  WD_COMMAND ; 
 int /*<<< orphan*/  WD_CONTROL ; 
 int /*<<< orphan*/  WD_OWN_ID ; 
 int /*<<< orphan*/  WD_QUEUE_TAG ; 
 int /*<<< orphan*/  WD_SCSI_STATUS ; 
 int /*<<< orphan*/  WD_SYNCHRONOUS_TRANSFER ; 
 int /*<<< orphan*/  WD_TIMEOUT_PERIOD ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct IN2000_hostdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct IN2000_hostdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *instance, int type)
{
	struct IN2000_hostdata *hostdata;
	int qt, x;

	hostdata = (struct IN2000_hostdata *) instance->hostdata;

	FUNC5(0, IO_LED_ON);
	if (type == RESET_CARD_AND_BUS) {
		FUNC5(0, IO_CARD_RESET);
		x = FUNC3(IO_HARDWARE);
	}
	x = FUNC4(hostdata, WD_SCSI_STATUS);	/* clear any WD intrpt */
	FUNC6(hostdata, WD_OWN_ID, instance->this_id | OWNID_EAF | OWNID_RAF | OWNID_FS_8);
	FUNC6(hostdata, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
	FUNC6(hostdata, WD_SYNCHRONOUS_TRANSFER, FUNC1(hostdata->default_sx_per / 4, DEFAULT_SX_OFF));

	FUNC5(0, IO_FIFO_WRITE);	/* clear fifo counter */
	FUNC5(0, IO_FIFO_READ);	/* start fifo out in read mode */
	FUNC6(hostdata, WD_COMMAND, WD_CMD_RESET);
	/* FIXME: timeout ?? */
	while (!(FUNC0() & ASR_INT))
		FUNC2();	/* wait for RESET to complete */

	x = FUNC4(hostdata, WD_SCSI_STATUS);	/* clear interrupt */

	FUNC6(hostdata, WD_QUEUE_TAG, 0xa5);	/* any random number */
	qt = FUNC4(hostdata, WD_QUEUE_TAG);
	if (qt == 0xa5) {
		x |= B_FLAG;
		FUNC6(hostdata, WD_QUEUE_TAG, 0);
	}
	FUNC6(hostdata, WD_TIMEOUT_PERIOD, TIMEOUT_PERIOD_VALUE);
	FUNC6(hostdata, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
	FUNC5(0, IO_LED_OFF);
	return x;
}