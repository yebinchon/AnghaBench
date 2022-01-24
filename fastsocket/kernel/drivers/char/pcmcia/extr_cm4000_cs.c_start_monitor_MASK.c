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
struct cm4000_dev {int monitor_running; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cm4000_dev*,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  monitor_card ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct cm4000_dev *dev)
{
	FUNC0(3, dev, "-> start_monitor\n");
	if (!dev->monitor_running) {
		FUNC0(5, dev, "create, init and add timer\n");
		FUNC2(&dev->timer, monitor_card, (unsigned long)dev);
		dev->monitor_running = 1;
		FUNC1(&dev->timer, jiffies);
	} else
		FUNC0(5, dev, "monitor already running\n");
	FUNC0(3, dev, "<- start_monitor\n");
}