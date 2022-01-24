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
struct bsg_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_cmds; int /*<<< orphan*/  name; } ;
struct bsg_command {int /*<<< orphan*/  bidi_bio; int /*<<< orphan*/  bio; int /*<<< orphan*/  hdr; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct bsg_command*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bsg_command*) ; 
 struct bsg_command* FUNC3 (struct bsg_device*) ; 
 int FUNC4 (struct bsg_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct bsg_device *bd)
{
	struct bsg_command *bc;
	int ret, tret;

	FUNC5("%s: entered\n", bd->name);

	/*
	 * wait for all commands to complete
	 */
	ret = 0;
	do {
		ret = FUNC4(bd);
		/*
		 * look for -ENODATA specifically -- we'll sometimes get
		 * -ERESTARTSYS when we've taken a signal, but we can't
		 * return until we're done freeing the queue, so ignore
		 * it.  The signal will get handled when we're done freeing
		 * the bsg_device.
		 */
	} while (ret != -ENODATA);

	/*
	 * discard done commands
	 */
	ret = 0;
	do {
		FUNC6(&bd->lock);
		if (!bd->queued_cmds) {
			FUNC7(&bd->lock);
			break;
		}
		FUNC7(&bd->lock);

		bc = FUNC3(bd);
		if (FUNC0(bc))
			break;

		tret = FUNC1(bc->rq, &bc->hdr, bc->bio,
						bc->bidi_bio);
		if (!ret)
			ret = tret;

		FUNC2(bc);
	} while (1);

	return ret;
}