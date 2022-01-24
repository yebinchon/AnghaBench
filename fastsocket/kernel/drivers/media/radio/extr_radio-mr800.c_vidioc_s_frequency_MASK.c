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
struct v4l2_frequency {int /*<<< orphan*/  frequency; } ;
struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; int /*<<< orphan*/  curfreq; int /*<<< orphan*/  lock; scalar_t__ removed; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct amradio_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct amradio_device *radio = FUNC5(FUNC4(file));
	int retval;

	/* safety check */
	if (radio->removed)
		return -EIO;

	FUNC2(&radio->lock);
	radio->curfreq = f->frequency;
	FUNC3(&radio->lock);

	retval = FUNC1(radio, radio->curfreq);
	if (retval < 0)
		FUNC0(&radio->videodev->dev,
			"set frequency failed\n");
	return 0;
}