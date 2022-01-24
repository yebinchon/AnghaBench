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
struct intel_sdvo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int SDVO_CMD_STATUS_PENDING ; 
 int SDVO_CMD_STATUS_SCALING_NOT_SUPP ; 
 int SDVO_CMD_STATUS_SUCCESS ; 
 scalar_t__ SDVO_I2C_CMD_STATUS ; 
 scalar_t__ SDVO_I2C_RETURN_0 ; 
 int /*<<< orphan*/  FUNC2 (struct intel_sdvo*) ; 
 int /*<<< orphan*/ * cmd_status_names ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sdvo*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct intel_sdvo *intel_sdvo,
				     void *response, int response_len)
{
	u8 retry = 15; /* 5 quick checks, followed by 10 long checks */
	u8 status;
	int i;

	FUNC0("%s: R: ", FUNC2(intel_sdvo));

	/*
	 * The documentation states that all commands will be
	 * processed within 15µs, and that we need only poll
	 * the status byte a maximum of 3 times in order for the
	 * command to be complete.
	 *
	 * Check 5 times in case the hardware failed to read the docs.
	 *
	 * Also beware that the first response by many devices is to
	 * reply PENDING and stall for time. TVs are notorious for
	 * requiring longer than specified to complete their replies.
	 * Originally (in the DDX long ago), the delay was only ever 15ms
	 * with an additional delay of 30ms applied for TVs added later after
	 * many experiments. To accommodate both sets of delays, we do a
	 * sequence of slow checks if the device is falling behind and fails
	 * to reply within 5*15µs.
	 */
	if (!FUNC3(intel_sdvo,
				  SDVO_I2C_CMD_STATUS,
				  &status))
		goto log_fail;

	while (status == SDVO_CMD_STATUS_PENDING && --retry) {
		if (retry < 10)
			FUNC4(15);
		else
			FUNC5(15);

		if (!FUNC3(intel_sdvo,
					  SDVO_I2C_CMD_STATUS,
					  &status))
			goto log_fail;
	}

	if (status <= SDVO_CMD_STATUS_SCALING_NOT_SUPP)
		FUNC1("(%s)", cmd_status_names[status]);
	else
		FUNC1("(??? %d)", status);

	if (status != SDVO_CMD_STATUS_SUCCESS)
		goto log_fail;

	/* Read the command response */
	for (i = 0; i < response_len; i++) {
		if (!FUNC3(intel_sdvo,
					  SDVO_I2C_RETURN_0 + i,
					  &((u8 *)response)[i]))
			goto log_fail;
		FUNC1(" %02X", ((u8 *)response)[i]);
	}
	FUNC1("\n");
	return true;

log_fail:
	FUNC1("... failed\n");
	return false;
}