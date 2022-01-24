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
struct TYPE_2__ {int urb_length; int data_count; int /*<<< orphan*/  urb_count; } ;
struct uvd {int /*<<< orphan*/  dp; TYPE_1__ stats; int /*<<< orphan*/  streaming; scalar_t__ user_data; } ;
struct urb {scalar_t__ start_frame; int transfer_buffer_length; int /*<<< orphan*/  status; int /*<<< orphan*/  actual_length; struct uvd* context; } ;
struct konicawc {struct urb* last_data_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct uvd*,struct urb*,struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct uvd*,struct urb*) ; 

__attribute__((used)) static void FUNC6(struct urb *urb)
{
	struct uvd *uvd = urb->context;
	struct konicawc *cam = (struct konicawc *)uvd->user_data;

	/* We don't want to do anything if we are about to be removed! */
	if (!FUNC0(uvd))
		return;

	if (!uvd->streaming) {
		FUNC1(1, "Not streaming, but interrupt!");
		return;
	}

	FUNC1(3, "got frame %d len = %d buflen =%d", urb->start_frame, urb->actual_length, urb->transfer_buffer_length);

	uvd->stats.urb_count++;

	if (urb->transfer_buffer_length > 32) {
		cam->last_data_urb = urb;
		return;
	}
	/* Copy the data received into ring queue */
	if(cam->last_data_urb) {
		int len = 0;
		if(urb->start_frame != cam->last_data_urb->start_frame)
			FUNC3("Lost sync on frames");
		else if (!urb->status && !cam->last_data_urb->status)
			len = FUNC4(uvd, cam->last_data_urb, urb);

		FUNC5(uvd, cam->last_data_urb);
		FUNC5(uvd, urb);
		cam->last_data_urb = NULL;
		uvd->stats.urb_length = len;
		uvd->stats.data_count += len;
		if(len)
			FUNC2(&uvd->dp);
		return;
	}
	return;
}