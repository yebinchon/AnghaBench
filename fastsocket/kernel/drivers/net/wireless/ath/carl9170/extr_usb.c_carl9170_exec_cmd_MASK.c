#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void u8 ;
struct TYPE_5__ {unsigned int len; int cmd; } ;
struct TYPE_7__ {scalar_t__ data; TYPE_1__ hdr; } ;
struct ar9170 {unsigned int readlen; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/ * readbuf; TYPE_3__ cmd; TYPE_2__* udev; int /*<<< orphan*/  cmd_wait; } ;
typedef  enum carl9170_cmd_oids { ____Placeholder_carl9170_cmd_oids } carl9170_cmd_oids ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int const CARL9170_CMD_ASYNC_FLAG ; 
 int /*<<< orphan*/  CARL9170_RR_COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int EIO ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 scalar_t__ FUNC1 (struct ar9170*) ; 
 int FUNC2 (struct ar9170*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(struct ar9170 *ar, const enum carl9170_cmd_oids cmd,
	unsigned int plen, void *payload, unsigned int outlen, void *out)
{
	int err = -ENOMEM;

	if (!FUNC0(ar))
		return -EIO;

	if (!(cmd & CARL9170_CMD_ASYNC_FLAG))
		FUNC6();

	ar->cmd.hdr.len = plen;
	ar->cmd.hdr.cmd = cmd;
	/* writing multiple regs fills this buffer already */
	if (plen && payload != (u8 *)(ar->cmd.data))
		FUNC5(ar->cmd.data, payload, plen);

	FUNC8(&ar->cmd_lock);
	ar->readbuf = (u8 *)out;
	ar->readlen = outlen;
	FUNC9(&ar->cmd_lock);

	err = FUNC2(ar, &ar->cmd, false);

	if (!(cmd & CARL9170_CMD_ASYNC_FLAG)) {
		err = FUNC10(&ar->cmd_wait, HZ);
		if (err == 0) {
			err = -ETIMEDOUT;
			goto err_unbuf;
		}

		if (ar->readlen != outlen) {
			err = -EMSGSIZE;
			goto err_unbuf;
		}
	}

	return 0;

err_unbuf:
	/* Maybe the device was removed in the moment we were waiting? */
	if (FUNC1(ar)) {
		FUNC4(&ar->udev->dev, "no command feedback "
			"received (%d).\n", err);

		/* provide some maybe useful debug information */
		FUNC7("carl9170 cmd: ", DUMP_PREFIX_NONE,
				     &ar->cmd, plen + 4);

		FUNC3(ar, CARL9170_RR_COMMAND_TIMEOUT);
	}

	/* invalidate to avoid completing the next command prematurely */
	FUNC8(&ar->cmd_lock);
	ar->readbuf = NULL;
	ar->readlen = 0;
	FUNC9(&ar->cmd_lock);

	return err;
}