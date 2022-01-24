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
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int users; scalar_t__ model; scalar_t__ type; int state; int /*<<< orphan*/  open; scalar_t__ USE_ISO; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/  vbi_or_sliced_cc_mode; int /*<<< orphan*/  devlist_count; struct cx231xx_fh* dev; } ;
struct cx231xx {int users; scalar_t__ model; scalar_t__ type; int state; int /*<<< orphan*/  open; scalar_t__ USE_ISO; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/  vbi_or_sliced_cc_mode; int /*<<< orphan*/  devlist_count; struct cx231xx* dev; } ;

/* Variables and functions */
 scalar_t__ CX231XX_BOARD_CNXT_VIDEO_GRABBER ; 
 scalar_t__ CX231XX_BOARD_HAUPPAUGE_USBLIVE2 ; 
 int /*<<< orphan*/  CX231XX_SUSPEND ; 
 int DEV_DISCONNECTED ; 
 int /*<<< orphan*/  INDEX_HANC ; 
 int /*<<< orphan*/  INDEX_VANC ; 
 int /*<<< orphan*/  INDEX_VIDEO ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx231xx_fh*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx231xx_fh*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx231xx_fh*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cx231xx_fh*) ; 
 scalar_t__ FUNC10 (struct cx231xx_fh*) ; 
 int /*<<< orphan*/  FUNC11 (struct cx231xx_fh*) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(struct file *filp)
{
	struct cx231xx_fh *fh = filp->private_data;
	struct cx231xx *dev = fh->dev;

	FUNC8("users=%d\n", dev->users);

	FUNC8("users=%d\n", dev->users);
	if (FUNC10(fh))
		FUNC11(fh);

	/*To workaround error number=-71 on EP0 for VideoGrabber,
		 need exclude following.*/
	if (dev->model != CX231XX_BOARD_CNXT_VIDEO_GRABBER &&
	    dev->model != CX231XX_BOARD_HAUPPAUGE_USBLIVE2)
		if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
			FUNC13(&fh->vb_vidq);
			FUNC12(&fh->vb_vidq);

			/* the device is already disconnect,
			   free the remaining resources */
			if (dev->state & DEV_DISCONNECTED) {
				if (FUNC0(&dev->devlist_count) > 0) {
					FUNC2(dev);
					FUNC9(dev);
					dev = NULL;
					return 0;
				}
				return 0;
			}

			/* do this before setting alternate! */
			FUNC7(dev);

			/* set alternate 0 */
			if (!dev->vbi_or_sliced_cc_mode)
				FUNC3(dev, INDEX_VANC, 0);
			else
				FUNC3(dev, INDEX_HANC, 0);

			FUNC9(fh);
			dev->users--;
			FUNC14(&dev->open, 1);
			return 0;
		}

	if (dev->users == 1) {
		FUNC13(&fh->vb_vidq);
		FUNC12(&fh->vb_vidq);

		/* the device is already disconnect,
		   free the remaining resources */
		if (dev->state & DEV_DISCONNECTED) {
			FUNC2(dev);
			FUNC9(dev);
			dev = NULL;
			return 0;
		}

		/* Save some power by putting tuner to sleep */
		FUNC1(dev, core, s_power, 0);

		/* do this before setting alternate! */
		if (dev->USE_ISO)
			FUNC6(dev);
		else
			FUNC5(dev);
		FUNC4(dev, CX231XX_SUSPEND);

		/* set alternate 0 */
		FUNC3(dev, INDEX_VIDEO, 0);
	}
	FUNC9(fh);
	dev->users--;
	FUNC14(&dev->open, 1);
	return 0;
}