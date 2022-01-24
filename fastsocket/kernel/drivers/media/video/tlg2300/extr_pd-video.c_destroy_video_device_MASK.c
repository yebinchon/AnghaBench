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
struct video_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct video_device*) ; 
 scalar_t__ FUNC1 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*) ; 

void FUNC3(struct video_device **v_dev)
{
	struct video_device *dev = *v_dev;

	if (dev == NULL)
		return;

	if (FUNC1(dev))
		FUNC2(dev);
	else
		FUNC0(dev);
	*v_dev = NULL;
}