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
struct vpif_fh {scalar_t__ initialized; int /*<<< orphan*/  prio; scalar_t__* io_allowed; struct channel_obj* channel; } ;
struct file {struct vpif_fh* private_data; } ;
struct common_obj {int started; int /*<<< orphan*/  lock; int /*<<< orphan*/  numbuffers; int /*<<< orphan*/  buffer_queue; scalar_t__ io_usrs; } ;
struct channel_obj {size_t channel_id; int /*<<< orphan*/  prio; scalar_t__ initialized; int /*<<< orphan*/  usrs; struct common_obj* common; } ;
struct TYPE_2__ {int /*<<< orphan*/ * numbuffers; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 size_t VPIF_CHANNEL2_VIDEO ; 
 size_t VPIF_CHANNEL3_VIDEO ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ config_params ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vpif_fh*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *filep)
{
	struct vpif_fh *fh = filep->private_data;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

	if (FUNC6(&common->lock))
		return -ERESTARTSYS;

	/* if this instance is doing IO */
	if (fh->io_allowed[VPIF_VIDEO_INDEX]) {
		/* Reset io_usrs member of channel object */
		common->io_usrs = 0;
		/* Disable channel */
		if (VPIF_CHANNEL2_VIDEO == ch->channel_id) {
			FUNC3(0);
			FUNC1(0);
		}
		if ((VPIF_CHANNEL3_VIDEO == ch->channel_id) ||
		    (2 == common->started)) {
			FUNC4(0);
			FUNC2(0);
		}
		common->started = 0;
		/* Free buffers allocated */
		FUNC10(&common->buffer_queue);
		FUNC9(&common->buffer_queue);
		common->numbuffers =
		    config_params.numbuffers[ch->channel_id];
	}

	FUNC7(&common->lock);

	/* Decrement channel usrs counter */
	FUNC0(&ch->usrs);
	/* If this file handle has initialize encoder device, reset it */
	if (fh->initialized)
		ch->initialized = 0;

	/* Close the priority */
	FUNC8(&ch->prio, &fh->prio);
	filep->private_data = NULL;
	fh->initialized = 0;
	FUNC5(fh);

	return 0;
}