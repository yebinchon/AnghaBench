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
struct vpif_fh {scalar_t__ initialized; int /*<<< orphan*/  prio; scalar_t__* io_allowed; struct channel_obj* channel; } ;
struct file {struct vpif_fh* private_data; } ;
struct common_obj {int started; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer_queue; scalar_t__ io_usrs; } ;
struct channel_obj {scalar_t__ channel_id; scalar_t__ initialized; int /*<<< orphan*/  prio; int /*<<< orphan*/  usrs; struct common_obj* common; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ VPIF_CHANNEL0_VIDEO ; 
 scalar_t__ VPIF_CHANNEL1_VIDEO ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vpif_fh*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct file *filep)
{
	struct vpif_fh *fh = filep->private_data;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common;

	FUNC10(2, debug, "vpif_release\n");

	common = &ch->common[VPIF_VIDEO_INDEX];

	if (FUNC5(&common->lock))
		return -ERESTARTSYS;

	/* if this instance is doing IO */
	if (fh->io_allowed[VPIF_VIDEO_INDEX]) {
		/* Reset io_usrs member of channel object */
		common->io_usrs = 0;
		/* Disable channel as per its device type and channel id */
		if (VPIF_CHANNEL0_VIDEO == ch->channel_id) {
			FUNC2(0);
			FUNC0(0);
		}
		if ((VPIF_CHANNEL1_VIDEO == ch->channel_id) ||
		    (2 == common->started)) {
			FUNC3(0);
			FUNC1(0);
		}
		common->started = 0;
		/* Free buffers allocated */
		FUNC9(&common->buffer_queue);
		FUNC8(&common->buffer_queue);
	}

	/* Decrement channel usrs counter */
	ch->usrs--;

	/* unlock mutex on channel object */
	FUNC6(&common->lock);

	/* Close the priority */
	FUNC7(&ch->prio, &fh->prio);

	if (fh->initialized)
		ch->initialized = 0;

	filep->private_data = NULL;
	FUNC4(fh);
	return 0;
}