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
struct vpif_fh {int initialized; int /*<<< orphan*/  prio; scalar_t__* io_allowed; struct channel_obj* channel; } ;
struct video_device {int dummy; } ;
struct file {struct vpif_fh* private_data; } ;
struct channel_obj {int initialized; int /*<<< orphan*/  prio; int /*<<< orphan*/  usrs; int /*<<< orphan*/  vpifparams; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_PRIORITY_UNSET ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vpif_fh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct video_device* FUNC4 (struct file*) ; 
 struct channel_obj* FUNC5 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct file *filep)
{
	struct video_device *vdev = FUNC4(filep);
	struct channel_obj *ch = NULL;
	struct vpif_fh *fh = NULL;

	ch = FUNC5(vdev);
	/* Allocate memory for the file handle object */
	fh = FUNC1(sizeof(struct vpif_fh), GFP_KERNEL);
	if (fh == NULL) {
		FUNC6("unable to allocate memory for file handle object\n");
		return -ENOMEM;
	}

	/* store pointer to fh in private_data member of filep */
	filep->private_data = fh;
	fh->channel = ch;
	fh->initialized = 0;
	if (!ch->initialized) {
		fh->initialized = 1;
		ch->initialized = 1;
		FUNC2(&ch->vpifparams, 0, sizeof(ch->vpifparams));
	}

	/* Increment channel usrs counter */
	FUNC0(&ch->usrs);
	/* Set io_allowed[VPIF_VIDEO_INDEX] member to false */
	fh->io_allowed[VPIF_VIDEO_INDEX] = 0;
	/* Initialize priority of this instance to default priority */
	fh->prio = V4L2_PRIORITY_UNSET;
	FUNC3(&ch->prio, &fh->prio);

	return 0;
}