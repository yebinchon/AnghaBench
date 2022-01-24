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
struct platform_device {int dummy; } ;
struct channel_obj {int /*<<< orphan*/ * video_dev; } ;
struct TYPE_2__ {struct channel_obj** dev; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int VPIF_DISPLAY_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vpif_obj ; 

__attribute__((used)) static int FUNC2(struct platform_device *device)
{
	struct channel_obj *ch;
	int i;

	FUNC0(&vpif_obj.v4l2_dev);

	/* un-register device */
	for (i = 0; i < VPIF_DISPLAY_MAX_DEVICES; i++) {
		/* Get the pointer to the channel object */
		ch = vpif_obj.dev[i];
		/* Unregister video device */
		FUNC1(ch->video_dev);

		ch->video_dev = NULL;
	}

	return 0;
}