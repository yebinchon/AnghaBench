#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uvd {int last_error; int /*<<< orphan*/  ifaceAltInactive; int /*<<< orphan*/  iface; TYPE_2__* dev; int /*<<< orphan*/  remove_pending; TYPE_1__* sbuf; scalar_t__ streaming; scalar_t__ user_data; } ;
struct qcm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int USBVIDEO_NUMSBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct uvd *uvd)
{
	struct qcm *cam = (struct qcm *) uvd->user_data;
	int i, j;
	int ret;

	if ((uvd == NULL) || (!uvd->streaming) || (uvd->dev == NULL))
		return;

	ret = FUNC2(uvd);
	if (ret)
		FUNC0(&uvd->dev->dev, "couldn't turn the cam off.\n");

	uvd->streaming = 0;

	/* Unschedule all of the iso td's */
	for (i=0; i < USBVIDEO_NUMSBUF; i++)
		FUNC4(uvd->sbuf[i].urb);

	FUNC3(cam);

	if (!uvd->remove_pending) {
		/* Set packet size to 0 */
		j = FUNC5(uvd->dev, uvd->iface,
					uvd->ifaceAltInactive);
		if (j < 0) {
			FUNC1("usb_set_interface() error %d.", j);
			uvd->last_error = j;
		}
	}
}