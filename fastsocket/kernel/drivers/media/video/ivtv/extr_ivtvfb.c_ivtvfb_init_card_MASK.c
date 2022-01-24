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
struct osd_info {int dummy; } ;
struct ivtv {int /*<<< orphan*/  ivtvfb_restore; TYPE_1__* osd_info; int /*<<< orphan*/  osd_video_pbase; } ;
struct TYPE_2__ {int /*<<< orphan*/  ivtvfb_info; int /*<<< orphan*/  video_pbase; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ivtvfb_card_id ; 
 int FUNC3 (struct ivtv*) ; 
 int FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*) ; 
 int /*<<< orphan*/  ivtvfb_restore ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct ivtv *itv)
{
	int rc;

	if (itv->osd_info) {
		FUNC0("Card %d already initialised\n", ivtvfb_card_id);
		return -EBUSY;
	}

	itv->osd_info = FUNC7(sizeof(struct osd_info),
					GFP_ATOMIC|__GFP_NOWARN);
	if (itv->osd_info == NULL) {
		FUNC0("Failed to allocate memory for osd_info\n");
		return -ENOMEM;
	}

	/* Find & setup the OSD buffer */
	rc = FUNC3(itv);
	if (rc) {
		FUNC5(itv);
		return rc;
	}

	/* Set the startup video mode information */
	if ((rc = FUNC4(itv))) {
		FUNC5(itv);
		return rc;
	}

	/* Register the framebuffer */
	if (FUNC8(&itv->osd_info->ivtvfb_info) < 0) {
		FUNC5(itv);
		return -EINVAL;
	}

	itv->osd_video_pbase = itv->osd_info->video_pbase;

	/* Set the card to the requested mode */
	FUNC6(&itv->osd_info->ivtvfb_info);

	/* Set color 0 to black */
	FUNC9(0, 0x02a30);
	FUNC9(0, 0x02a34);

	/* Enable the osd */
	FUNC2(FB_BLANK_UNBLANK, &itv->osd_info->ivtvfb_info);

	/* Enable restart */
	itv->ivtvfb_restore = ivtvfb_restore;

	/* Allocate DMA */
	FUNC1(itv);
	return 0;

}