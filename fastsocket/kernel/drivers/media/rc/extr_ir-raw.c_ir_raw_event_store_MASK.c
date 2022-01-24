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
struct rc_dev {TYPE_1__* raw; } ;
struct ir_raw_event {int /*<<< orphan*/  pulse; int /*<<< orphan*/  duration; } ;
struct TYPE_2__ {int /*<<< orphan*/  kfifo; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC4(struct rc_dev *dev, struct ir_raw_event *ev)
{
	if (!dev->raw)
		return -EINVAL;

	FUNC0(2, "sample: (%05dus %s)\n",
		   FUNC2(ev->duration), FUNC1(ev->pulse));

	if (FUNC3(dev->raw->kfifo, (void *)ev, sizeof(*ev)) != sizeof(*ev))
		return -ENOMEM;

	return 0;
}