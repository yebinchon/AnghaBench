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
struct r592_device {int /*<<< orphan*/  io_thread_lock; int /*<<< orphan*/  io_thread; scalar_t__ req; } ;
struct memstick_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct r592_device* FUNC1 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct memstick_host *host)
{
	struct r592_device *dev = FUNC1(host);
	unsigned long flags;

	if (dev->req)
		return;

	FUNC2(&dev->io_thread_lock, flags);
	if (FUNC4(dev->io_thread))
		FUNC0("IO thread woken to process requests");
	FUNC3(&dev->io_thread_lock, flags);
}