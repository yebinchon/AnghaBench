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
struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; int /*<<< orphan*/  removed; int /*<<< orphan*/  lock; scalar_t__ users; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMRADIO_STOP ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct amradio_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct amradio_device *radio = FUNC5(FUNC4(file));
	int retval;

	if (!radio)
		return -ENODEV;

	FUNC2(&radio->lock);
	radio->users = 0;
	FUNC3(&radio->lock);

	if (!radio->removed) {
		retval = FUNC1(radio, AMRADIO_STOP);
		if (retval < 0)
			FUNC0(&radio->videodev->dev,
				"amradio_stop failed\n");
	}

	return 0;
}