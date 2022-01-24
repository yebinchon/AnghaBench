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
struct file {struct em28xx_fh* private_data; } ;
struct em28xx_fh {int users; int state; int /*<<< orphan*/  open; int /*<<< orphan*/  vb_vbiq; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/  udev; scalar_t__ alt; int /*<<< orphan*/  v4l2_dev; struct em28xx_fh* dev; } ;
struct em28xx {int users; int state; int /*<<< orphan*/  open; int /*<<< orphan*/  vb_vbiq; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/  udev; scalar_t__ alt; int /*<<< orphan*/  v4l2_dev; struct em28xx* dev; } ;

/* Variables and functions */
 int DEV_DISCONNECTED ; 
 int /*<<< orphan*/  EM28XX_RESOURCE_VBI ; 
 int /*<<< orphan*/  EM28XX_RESOURCE_VIDEO ; 
 int /*<<< orphan*/  EM28XX_SUSPEND ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx_fh*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct em28xx_fh*) ; 
 scalar_t__ FUNC6 (struct em28xx_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct em28xx_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_power ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC13(struct file *filp)
{
	struct em28xx_fh *fh  = filp->private_data;
	struct em28xx    *dev = fh->dev;
	int              errCode;

	FUNC4("users=%d\n", dev->users);

	if (FUNC6(fh, EM28XX_RESOURCE_VIDEO)) {
		FUNC11(&fh->vb_vidq);
		FUNC7(fh, EM28XX_RESOURCE_VIDEO);
	}

	if (FUNC6(fh, EM28XX_RESOURCE_VBI)) {
		FUNC11(&fh->vb_vbiq);
		FUNC7(fh, EM28XX_RESOURCE_VBI);
	}

	if (dev->users == 1) {
		/* the device is already disconnect,
		   free the remaining resources */
		if (dev->state & DEV_DISCONNECTED) {
			FUNC1(dev);
			FUNC5(dev);
			return 0;
		}

		/* Save some power by putting tuner to sleep */
		FUNC9(&dev->v4l2_dev, 0, core, s_power, 0);

		/* do this before setting alternate! */
		FUNC3(dev);
		FUNC2(dev, EM28XX_SUSPEND);

		/* set alternate 0 */
		dev->alt = 0;
		FUNC4("setting alternate 0\n");
		errCode = FUNC8(dev->udev, 0, 0);
		if (errCode < 0) {
			FUNC0("cannot change alternate number to "
					"0 (error=%i)\n", errCode);
		}
	}

	FUNC10(&fh->vb_vidq);
	FUNC10(&fh->vb_vbiq);
	FUNC5(fh);
	dev->users--;
	FUNC12(&dev->open, 1);
	return 0;
}