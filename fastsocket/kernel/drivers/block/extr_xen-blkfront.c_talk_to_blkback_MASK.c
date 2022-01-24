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
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  nodename; } ;
struct blkfront_info {int /*<<< orphan*/  evtchn; int /*<<< orphan*/  ring_ref; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  XEN_IO_PROTO_ABI_NATIVE ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int /*<<< orphan*/  FUNC0 (struct blkfront_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xenbus_device*,struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*,int,char*,...) ; 
 int FUNC3 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xenbus_transaction,int) ; 
 int FUNC6 (struct xenbus_transaction*) ; 

__attribute__((used)) static int FUNC7(struct xenbus_device *dev,
			   struct blkfront_info *info)
{
	const char *message = NULL;
	struct xenbus_transaction xbt;
	int err;

	/* Create shared ring, alloc event channel. */
	err = FUNC1(dev, info);
	if (err)
		goto out;

again:
	err = FUNC6(&xbt);
	if (err) {
		FUNC2(dev, err, "starting transaction");
		goto destroy_blkring;
	}

	err = FUNC3(xbt, dev->nodename,
			    "ring-ref", "%u", info->ring_ref);
	if (err) {
		message = "writing ring-ref";
		goto abort_transaction;
	}
	err = FUNC3(xbt, dev->nodename,
			    "event-channel", "%u", info->evtchn);
	if (err) {
		message = "writing event-channel";
		goto abort_transaction;
	}
	err = FUNC3(xbt, dev->nodename, "protocol", "%s",
			    XEN_IO_PROTO_ABI_NATIVE);
	if (err) {
		message = "writing protocol";
		goto abort_transaction;
	}

	err = FUNC5(xbt, 0);
	if (err) {
		if (err == -EAGAIN)
			goto again;
		FUNC2(dev, err, "completing transaction");
		goto destroy_blkring;
	}

	FUNC4(dev, XenbusStateInitialised);

	return 0;

 abort_transaction:
	FUNC5(xbt, 1);
	if (message)
		FUNC2(dev, err, "%s", message);
 destroy_blkring:
	FUNC0(info, 0);
 out:
	return err;
}