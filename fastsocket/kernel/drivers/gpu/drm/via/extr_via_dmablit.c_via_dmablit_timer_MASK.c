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
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int blit_queues; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int /*<<< orphan*/  poll_timer; struct drm_device* dev; } ;
typedef  TYPE_2__ drm_via_blitq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(unsigned long data)
{
	drm_via_blitq_t *blitq = (drm_via_blitq_t *) data;
	struct drm_device *dev = blitq->dev;
	int engine = (int)
		(blitq - ((drm_via_private_t *)dev->dev_private)->blit_queues);

	FUNC0("Polling timer called for engine %d, jiffies %lu\n", engine,
		  (unsigned long) jiffies);

	FUNC3(dev, engine, 0);

	if (!FUNC2(&blitq->poll_timer)) {
		FUNC1(&blitq->poll_timer, jiffies + 1);

	       /*
		* Rerun handler to delete timer if engines are off, and
		* to shorten abort latency. This is a little nasty.
		*/

	       FUNC3(dev, engine, 0);

	}
}