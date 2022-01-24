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
struct TYPE_2__ {scalar_t__ qlen; } ;
struct hifn_device {scalar_t__ started; TYPE_1__ queue; } ;

/* Variables and functions */
 scalar_t__ HIFN_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct hifn_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_device*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct hifn_device *dev = (struct hifn_device *)data;

	/*
	 * This is ok to call this without lock being held,
	 * althogh it modifies some parameters used in parallel,
	 * (like dev->success), but they are used in process
	 * context or update is atomic (like setting dev->sa[i] to NULL).
	 */
	FUNC0(dev, 0);

	if (dev->started < HIFN_QUEUE_LENGTH &&	dev->queue.qlen)
		FUNC1(dev);
}