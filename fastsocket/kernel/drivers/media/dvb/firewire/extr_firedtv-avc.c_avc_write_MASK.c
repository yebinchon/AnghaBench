#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct firedtv {int avc_reply_received; int /*<<< orphan*/  device; int /*<<< orphan*/  avc_wait; int /*<<< orphan*/  avc_data_length; int /*<<< orphan*/  avc_data; TYPE_1__* backend; } ;
struct TYPE_2__ {int (* write ) (struct firedtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FCP_COMMAND_REGISTER ; 
 int /*<<< orphan*/  avc_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct firedtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct firedtv *fdtv)
{
	int err, retry;

	fdtv->avc_reply_received = false;

	for (retry = 0; retry < 6; retry++) {
		if (FUNC4(avc_debug))
			FUNC0(fdtv->avc_data, fdtv->avc_data_length);

		err = fdtv->backend->write(fdtv, FCP_COMMAND_REGISTER,
				fdtv->avc_data, fdtv->avc_data_length);
		if (err) {
			FUNC1(fdtv->device, "FCP command write failed\n");

			return err;
		}

		/*
		 * AV/C specs say that answers should be sent within 150 ms.
		 * Time out after 200 ms.
		 */
		if (FUNC5(fdtv->avc_wait,
				       fdtv->avc_reply_received,
				       FUNC2(200)) != 0)
			return 0;
	}
	FUNC1(fdtv->device, "FCP response timed out\n");

	return -ETIMEDOUT;
}