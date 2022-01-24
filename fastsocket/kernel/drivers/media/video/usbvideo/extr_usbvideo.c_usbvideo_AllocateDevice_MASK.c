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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct uvd {int /*<<< orphan*/  lock; TYPE_2__ vdev; int /*<<< orphan*/  dp; scalar_t__ last_error; scalar_t__ remove_pending; scalar_t__ user; scalar_t__ uvd_used; TYPE_1__* sbuf; } ;
struct usbvideo {char* drvName; struct uvd* cam; } ;
struct TYPE_3__ {int /*<<< orphan*/ * urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRAMES_PER_DESC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int USBVIDEO_NUMSBUF ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct uvd*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC8 (struct uvd*) ; 
 int FUNC9 (struct usbvideo*) ; 
 TYPE_2__ usbvideo_template ; 

struct uvd *FUNC10(struct usbvideo *cams)
{
	int i, devnum;
	struct uvd *uvd = NULL;

	if (cams == NULL) {
		FUNC2("No usbvideo handle?");
		return NULL;
	}

	devnum = FUNC9(cams);
	if (devnum == -1) {
		FUNC2("IBM USB camera driver: Too many devices!");
		return NULL;
	}
	uvd = &cams->cam[devnum];
	FUNC1("Device entry #%d. at $%p", devnum, uvd);

	/* Not relying upon caller we increase module counter ourselves */
	FUNC8(uvd);

	FUNC3(&uvd->lock);
	for (i=0; i < USBVIDEO_NUMSBUF; i++) {
		uvd->sbuf[i].urb = FUNC6(FRAMES_PER_DESC, GFP_KERNEL);
		if (uvd->sbuf[i].urb == NULL) {
			FUNC2("usb_alloc_urb(%d.) failed.", FRAMES_PER_DESC);
			uvd->uvd_used = 0;
			uvd = NULL;
			goto allocate_done;
		}
	}
	uvd->user=0;
	uvd->remove_pending = 0;
	uvd->last_error = 0;
	FUNC0(&uvd->dp);

	/* Initialize video device structure */
	uvd->vdev = usbvideo_template;
	FUNC5(uvd->vdev.name, "%.20s USB Camera", cams->drvName);
	/*
	 * The client is free to overwrite those because we
	 * return control to the client's probe function right now.
	 */
allocate_done:
	FUNC4(&uvd->lock);
	FUNC7(uvd);
	return uvd;
}