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
struct video_device {int dummy; } ;
struct pwc_device {int vframe_count; int /*<<< orphan*/  modlock; struct video_device* vopen; int /*<<< orphan*/  unplugged; int /*<<< orphan*/  type; int /*<<< orphan*/  vframes_error; int /*<<< orphan*/  vframes_dumped; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_2__ {struct pwc_device* pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_DEV_HINTS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct video_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__* device_hint ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ power_save ; 
 int FUNC6 (struct pwc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pwc_device*) ; 
 scalar_t__ FUNC12 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pwc_device* FUNC13 (struct video_device*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct video_device *vdev = file->private_data;
	struct pwc_device *pdev;
	int i, hint;

	FUNC2(">> video_close called(vdev = 0x%p).\n", vdev);

	pdev = FUNC13(vdev);
	FUNC4(&pdev->modlock);
	if (pdev->vopen == 0)
		FUNC1("video_close() called on closed device?\n");

	/* Dump statistics, but only if a reasonable amount of frames were
	   processed (to prevent endless log-entries in case of snap-shot
	   programs)
	 */
	if (pdev->vframe_count > 20)
		FUNC1("Closing video device: %d frames received, dumped %d frames, %d frames with errors.\n", pdev->vframe_count, pdev->vframes_dumped, pdev->vframes_error);

	if (FUNC0(pdev->type))
	    FUNC8();
	else
	    FUNC9();

	FUNC11(pdev);
	FUNC10(pdev);

	/* Turn off LEDS and power down camera, but only when not unplugged */
	if (!pdev->unplugged) {
		/* Turn LEDs off */
		if (FUNC12(pdev, 0, 0) < 0)
			FUNC1("Failed to set LED on/off time.\n");
		if (power_save) {
			i = FUNC6(pdev, 0);
			if (i < 0)
				FUNC3("Failed to power down camera (%d)\n", i);
		}
		pdev->vopen--;
		FUNC2("<< video_close() vopen=%d\n", pdev->vopen);
	} else {
		FUNC7(pdev);
		/* search device_hint[] table if we occupy a slot, by any chance */
		for (hint = 0; hint < MAX_DEV_HINTS; hint++)
			if (device_hint[hint].pdev == pdev)
				device_hint[hint].pdev = NULL;
	}
	FUNC5(&pdev->modlock);

	return 0;
}