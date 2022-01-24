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
struct tty_struct {int index; int low_latency; int count; struct slgt_info* driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int count; int flags; struct tty_struct* tty; int /*<<< orphan*/  close_wait; } ;
struct slgt_info {int line; int /*<<< orphan*/  device_name; TYPE_1__ port; int /*<<< orphan*/  netlock; scalar_t__ netcount; scalar_t__ init_error; struct slgt_info* next_device; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_HUP_NOTIFY ; 
 long ASYNC_LOW_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int FUNC2 (struct tty_struct*,struct file*,struct slgt_info*) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int slgt_device_count ; 
 struct slgt_info* slgt_device_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct slgt_info*) ; 
 scalar_t__ FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct tty_struct *tty, struct file *filp)
{
	struct slgt_info *info;
	int retval, line;
	unsigned long flags;

	line = tty->index;
	if ((line < 0) || (line >= slgt_device_count)) {
		FUNC0(("%s: open with invalid line #%d.\n", driver_name, line));
		return -ENODEV;
	}

	info = slgt_device_list;
	while(info && info->line != line)
		info = info->next_device;
	if (FUNC4(info, tty->name, "open"))
		return -ENODEV;
	if (info->init_error) {
		FUNC0(("%s init error=%d\n", info->device_name, info->init_error));
		return -ENODEV;
	}

	tty->driver_data = info;
	info->port.tty = tty;

	FUNC1(("%s open, old ref count = %d\n", info->device_name, info->port.count));

	/* If port is closing, signal caller to try again */
	if (FUNC8(filp) || info->port.flags & ASYNC_CLOSING){
		if (info->port.flags & ASYNC_CLOSING)
			FUNC3(&info->port.close_wait);
		retval = ((info->port.flags & ASYNC_HUP_NOTIFY) ?
			-EAGAIN : -ERESTARTSYS);
		goto cleanup;
	}

	info->port.tty->low_latency = (info->port.flags & ASYNC_LOW_LATENCY) ? 1 : 0;

	FUNC5(&info->netlock, flags);
	if (info->netcount) {
		retval = -EBUSY;
		FUNC6(&info->netlock, flags);
		goto cleanup;
	}
	info->port.count++;
	FUNC6(&info->netlock, flags);

	if (info->port.count == 1) {
		/* 1st open on this device, init hardware */
		retval = FUNC7(info);
		if (retval < 0)
			goto cleanup;
	}

	retval = FUNC2(tty, filp, info);
	if (retval) {
		FUNC1(("%s block_til_ready rc=%d\n", info->device_name, retval));
		goto cleanup;
	}

	retval = 0;

cleanup:
	if (retval) {
		if (tty->count == 1)
			info->port.tty = NULL; /* tty layer will release tty struct */
		if(info->port.count)
			info->port.count--;
	}

	FUNC1(("%s open rc=%d\n", info->device_name, retval));
	return retval;
}