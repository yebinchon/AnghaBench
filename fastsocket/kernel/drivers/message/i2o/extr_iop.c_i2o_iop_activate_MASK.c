#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* virt; } ;
struct i2o_controller {int /*<<< orphan*/  name; TYPE_1__ status_block; } ;
struct TYPE_4__ {scalar_t__ i2o_version; int iop_state; } ;
typedef  TYPE_2__ i2o_status_block ;

/* Variables and functions */
#define  ADAPTER_STATE_FAILED 132 
#define  ADAPTER_STATE_FAULTED 131 
#define  ADAPTER_STATE_HOLD 130 
#define  ADAPTER_STATE_OPERATIONAL 129 
#define  ADAPTER_STATE_READY 128 
 int ADAPTER_STATE_RESET ; 
 int EFAULT ; 
 int EIO ; 
 int ENODEV ; 
 scalar_t__ I2OVER15 ; 
 int FUNC0 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2o_controller*) ; 
 int FUNC2 (struct i2o_controller*) ; 
 int FUNC3 (struct i2o_controller*) ; 
 int FUNC4 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2o_controller *c)
{
	i2o_status_block *sb = c->status_block.virt;
	int rc;
	int state;

	/* In INIT state, Wait Inbound Q to initialize (in i2o_status_get) */
	/* In READY state, Get status */

	rc = FUNC4(c);
	if (rc) {
		FUNC7("%s: Unable to obtain status, attempting a reset.\n",
			 c->name);
		rc = FUNC3(c);
		if (rc)
			return rc;
	}

	if (sb->i2o_version > I2OVER15) {
		FUNC6("%s: Not running version 1.5 of the I2O Specification."
			"\n", c->name);
		return -ENODEV;
	}

	switch (sb->iop_state) {
	case ADAPTER_STATE_FAULTED:
		FUNC6("%s: hardware fault\n", c->name);
		return -EFAULT;

	case ADAPTER_STATE_READY:
	case ADAPTER_STATE_OPERATIONAL:
	case ADAPTER_STATE_HOLD:
	case ADAPTER_STATE_FAILED:
		FUNC5("%s: already running, trying to reset...\n", c->name);
		rc = FUNC3(c);
		if (rc)
			return rc;
	}

	/* preserve state */
	state = sb->iop_state;

	rc = FUNC2(c);
	if (rc)
		return rc;

	/* if adapter was not in RESET state clear now */
	if (state != ADAPTER_STATE_RESET)
		FUNC1(c);

	FUNC4(c);

	if (sb->iop_state != ADAPTER_STATE_HOLD) {
		FUNC6("%s: failed to bring IOP into HOLD state\n", c->name);
		return -EIO;
	}

	return FUNC0(c);
}