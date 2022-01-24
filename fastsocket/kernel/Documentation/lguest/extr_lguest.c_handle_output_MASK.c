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
struct TYPE_3__ {unsigned long pfn; } ;
struct virtqueue {TYPE_1__ config; struct virtqueue* next; } ;
struct device {scalar_t__ desc; unsigned long name; scalar_t__ running; struct virtqueue* vq; struct device* next; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 TYPE_2__ devices ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 unsigned long guest_limit ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long addr)
{
	struct device *i;

	/* Check each device. */
	for (i = devices.dev; i; i = i->next) {
		struct virtqueue *vq;

		/*
		 * Notifications to device descriptors mean they updated the
		 * device status.
		 */
		if (FUNC1(addr) == i->desc) {
			FUNC5(i);
			return;
		}

		/*
		 * Devices *can* be used before status is set to DRIVER_OK.
		 * The original plan was that they would never do this: they
		 * would always finish setting up their status bits before
		 * actually touching the virtqueues.  In practice, we allowed
		 * them to, and they do (eg. the disk probes for partition
		 * tables as part of initialization).
		 *
		 * If we see this, we start the device: once it's running, we
		 * expect the device to catch all the notifications.
		 */
		for (vq = i->vq; vq; vq = vq->next) {
			if (addr != vq->config.pfn*FUNC2())
				continue;
			if (i->running)
				FUNC0(1, "Notification on running %s", i->name);
			/* This just calls create_thread() for each virtqueue */
			FUNC3(i);
			return;
		}
	}

	/*
	 * Early console write is done using notify on a nul-terminated string
	 * in Guest memory.  It's also great for hacking debugging messages
	 * into a Guest.
	 */
	if (addr >= guest_limit)
		FUNC0(1, "Bad NOTIFY %#lx", addr);

	FUNC6(STDOUT_FILENO, FUNC1(addr),
	      FUNC4(FUNC1(addr), guest_limit - addr));
}