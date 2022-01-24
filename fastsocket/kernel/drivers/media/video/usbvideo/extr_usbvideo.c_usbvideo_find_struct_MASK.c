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
struct uvd {int uvd_used; int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; } ;
struct usbvideo {int num_cameras; int /*<<< orphan*/  lock; struct uvd* cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct usbvideo *cams)
{
	int u, rv = -1;

	if (cams == NULL) {
		FUNC0("No usbvideo handle?");
		return -1;
	}
	FUNC2(&cams->lock);
	for (u = 0; u < cams->num_cameras; u++) {
		struct uvd *uvd = &cams->cam[u];
		if (!uvd->uvd_used) /* This one is free */
		{
			uvd->uvd_used = 1;	/* In use now */
			FUNC1(&uvd->lock);	/* to 1 == available */
			uvd->dev = NULL;
			rv = u;
			break;
		}
	}
	FUNC3(&cams->lock);
	return rv;
}