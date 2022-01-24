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
struct mapleq {TYPE_1__* recvbuf; struct maple_device* dev; } ;
struct maple_device {unsigned long function; } ;
struct dc_kbd {int /*<<< orphan*/  new; } ;
struct TYPE_2__ {scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_kbd*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct dc_kbd* FUNC2 (struct maple_device*) ; 
 int /*<<< orphan*/  maple_keyb_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mapleq *mq)
{
	struct maple_device *mapledev = mq->dev;
	struct dc_kbd *kbd = FUNC2(mapledev);
	unsigned long *buf = (unsigned long *)(mq->recvbuf->buf);

	/*
	 * We should always get the lock because the only
	 * time it may be locked is if the driver is in the cleanup phase.
	 */
	if (FUNC1(FUNC4(&maple_keyb_mutex))) {

		if (buf[1] == mapledev->function) {
			FUNC3(kbd->new, buf + 2, 8);
			FUNC0(kbd);
		}

		FUNC5(&maple_keyb_mutex);
	}
}