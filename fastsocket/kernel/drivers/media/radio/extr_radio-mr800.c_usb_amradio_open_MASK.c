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
struct amradio_device {int users; int muted; TYPE_1__* videodev; int /*<<< orphan*/  curfreq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMRADIO_START ; 
 int EIO ; 
 int /*<<< orphan*/  WANT_STEREO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 struct amradio_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct amradio_device *radio = FUNC7(FUNC6(file));
	int retval;

	FUNC4();

	radio->users = 1;
	radio->muted = 1;

	retval = FUNC1(radio, AMRADIO_START);
	if (retval < 0) {
		FUNC0(&radio->videodev->dev,
			"radio did not start up properly\n");
		radio->users = 0;
		FUNC5();
		return -EIO;
	}

	retval = FUNC2(radio, WANT_STEREO);
	if (retval < 0)
		FUNC0(&radio->videodev->dev,
			"set stereo failed\n");

	retval = FUNC3(radio, radio->curfreq);
	if (retval < 0)
		FUNC0(&radio->videodev->dev,
			"set frequency failed\n");

	FUNC5();
	return 0;
}