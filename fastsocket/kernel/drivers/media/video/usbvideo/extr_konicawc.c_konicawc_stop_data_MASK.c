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
struct uvd {int last_error; int /*<<< orphan*/  ifaceAltInactive; int /*<<< orphan*/  iface; int /*<<< orphan*/ * dev; int /*<<< orphan*/  remove_pending; TYPE_1__* sbuf; scalar_t__ user_data; scalar_t__ streaming; } ;
struct konicawc {int /*<<< orphan*/ * sts_urb; int /*<<< orphan*/ * last_data_urb; } ;
struct TYPE_2__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int USBVIDEO_NUMSBUF ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uvd *uvd)
{
	int i, j;
	struct konicawc *cam;

	if ((uvd == NULL) || (!uvd->streaming) || (uvd->dev == NULL))
		return;

	FUNC1(uvd);
	uvd->streaming = 0;
	cam = (struct konicawc *)uvd->user_data;
	cam->last_data_urb = NULL;

	/* Unschedule all of the iso td's */
	for (i=0; i < USBVIDEO_NUMSBUF; i++) {
		FUNC2(uvd->sbuf[i].urb);
		FUNC2(cam->sts_urb[i]);
	}

	if (!uvd->remove_pending) {
		/* Set packet size to 0 */
		j = FUNC3(uvd->dev, uvd->iface, uvd->ifaceAltInactive);
		if (j < 0) {
			FUNC0("usb_set_interface() error %d.", j);
			uvd->last_error = j;
		}
	}
}