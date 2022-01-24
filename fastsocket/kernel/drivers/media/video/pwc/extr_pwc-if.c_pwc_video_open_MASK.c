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
struct video_device {int dummy; } ;
struct pwc_device {int usb_init; size_t vsize; int vframes; int type; int /*<<< orphan*/  modlock; scalar_t__ vopen; int /*<<< orphan*/  vcompression; scalar_t__ vsnapshot; scalar_t__ error_status; scalar_t__ visoc_errors; scalar_t__ vframes_error; scalar_t__ vframes_dumped; scalar_t__ vframe_count; scalar_t__* image_used; TYPE_1__* vdev; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 unsigned int PSZ_QCIF ; 
 unsigned int PSZ_QSIF ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  led_off ; 
 int /*<<< orphan*/  led_on ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ power_save ; 
 int FUNC4 (struct pwc_device*) ; 
 int FUNC5 (struct pwc_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pwc_device*) ; 
 int FUNC8 (struct pwc_device*,int*) ; 
 TYPE_2__* pwc_image_sizes ; 
 int pwc_mbufs ; 
 int /*<<< orphan*/  FUNC9 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct pwc_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pwc_device*,int) ; 
 scalar_t__ FUNC13 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC15 (struct file*) ; 
 struct pwc_device* FUNC16 (struct video_device*) ; 

__attribute__((used)) static int FUNC17(struct file *file)
{
	int i, ret;
	struct video_device *vdev = FUNC15(file);
	struct pwc_device *pdev;

	FUNC1(">> video_open called(vdev = 0x%p).\n", vdev);

	pdev = FUNC16(vdev);
	FUNC0(!pdev);
	if (pdev->vopen) {
		FUNC1("I'm busy, someone is using the device.\n");
		return -EBUSY;
	}

	FUNC2(&pdev->modlock);
	FUNC6(pdev); /* set min/max sizes correct */
	if (!pdev->usb_init) {
		FUNC1("Doing first time initialization.\n");
		pdev->usb_init = 1;

		/* Query sensor type */
		ret = FUNC8(pdev, &i);
		if (ret >= 0)
		{
			FUNC1("This %s camera is equipped with a %s (%d).\n",
					pdev->vdev->name,
					FUNC10(i), i);
		}
	}

	/* Turn on camera */
	if (power_save) {
		i = FUNC5(pdev, 1);
		if (i < 0)
			FUNC1("Failed to restore power to the camera! (%d)\n", i);
	}
	/* Set LED on/off time */
	if (FUNC13(pdev, led_on, led_off) < 0)
		FUNC1("Failed to set LED on/off time.\n");


	/* So far, so good. Allocate memory. */
	i = FUNC4(pdev);
	if (i < 0) {
		FUNC1("Failed to allocate buffers memory.\n");
		FUNC7(pdev);
		FUNC3(&pdev->modlock);
		return i;
	}

	/* Reset buffers & parameters */
	FUNC9(pdev);
	for (i = 0; i < pwc_mbufs; i++)
		pdev->image_used[i] = 0;
	pdev->vframe_count = 0;
	pdev->vframes_dumped = 0;
	pdev->vframes_error = 0;
	pdev->visoc_errors = 0;
	pdev->error_status = 0;
	FUNC6(pdev); /* set min/max sizes correct */

	/* Set some defaults */
	pdev->vsnapshot = 0;

	/* Set video size, first try the last used video size
	   (or the default one); if that fails try QCIF/10 or QSIF/10;
	   it that fails too, give up.
	 */
	i = FUNC14(pdev, pwc_image_sizes[pdev->vsize].x, pwc_image_sizes[pdev->vsize].y, pdev->vframes, pdev->vcompression, 0);
	if (i)	{
		unsigned int default_resolution;
		FUNC1("First attempt at set_video_mode failed.\n");
		if (pdev->type>= 730)
			default_resolution = PSZ_QSIF;
		else
			default_resolution = PSZ_QCIF;

		i = FUNC14(pdev,
				       pwc_image_sizes[default_resolution].x,
				       pwc_image_sizes[default_resolution].y,
				       10,
				       pdev->vcompression,
				       0);
	}
	if (i) {
		FUNC1("Second attempt at set_video_mode failed.\n");
		FUNC7(pdev);
		FUNC3(&pdev->modlock);
		return i;
	}

	/* Initialize the webcam to sane value */
	FUNC12(pdev, 0x7fff);
	FUNC11(pdev, 1, 0);

	pdev->vopen++;
	file->private_data = vdev;
	FUNC3(&pdev->modlock);
	FUNC1("<< video_open() returns 0.\n");
	return 0;
}