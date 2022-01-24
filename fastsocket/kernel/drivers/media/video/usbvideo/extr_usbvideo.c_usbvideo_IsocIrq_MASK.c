#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int urb_length; int data_count; int /*<<< orphan*/  urb_count; } ;
struct uvd {int debug; TYPE_3__* dev; int /*<<< orphan*/  dp; TYPE_1__ stats; int /*<<< orphan*/  streaming; } ;
struct urb {TYPE_3__* dev; int /*<<< orphan*/  status; TYPE_2__* iso_frame_desc; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  error_count; struct uvd* context; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ actual_length; scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvd*) ; 
 int FRAMES_PER_DESC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct uvd*,struct urb*) ; 

__attribute__((used)) static void FUNC6(struct urb *urb)
{
	int i, ret, len;
	struct uvd *uvd = urb->context;

	/* We don't want to do anything if we are about to be removed! */
	if (!FUNC0(uvd))
		return;
#if 0
	if (urb->actual_length > 0) {
		dev_info(&uvd->dev->dev,
			 "urb=$%p status=%d. errcount=%d. length=%d.\n",
			 urb, urb->status, urb->error_count,
			 urb->actual_length);
	} else {
		static int c = 0;
		if (c++ % 100 == 0)
			dev_info(&uvd->dev->dev, "No Isoc data\n");
	}
#endif

	if (!uvd->streaming) {
		if (uvd->debug >= 1)
			FUNC2(&uvd->dev->dev,
				 "Not streaming, but interrupt!\n");
		return;
	}

	uvd->stats.urb_count++;
	if (urb->actual_length <= 0)
		goto urb_done_with;

	/* Copy the data received into ring queue */
	len = FUNC5(uvd, urb);
	uvd->stats.urb_length = len;
	if (len <= 0)
		goto urb_done_with;

	/* Here we got some data */
	uvd->stats.data_count += len;
	FUNC1(&uvd->dp);

urb_done_with:
	for (i = 0; i < FRAMES_PER_DESC; i++) {
		urb->iso_frame_desc[i].status = 0;
		urb->iso_frame_desc[i].actual_length = 0;
	}
	urb->status = 0;
	urb->dev = uvd->dev;
	ret = FUNC4 (urb, GFP_KERNEL);
	if(ret)
		FUNC3("usb_submit_urb error (%d)", ret);
	return;
}