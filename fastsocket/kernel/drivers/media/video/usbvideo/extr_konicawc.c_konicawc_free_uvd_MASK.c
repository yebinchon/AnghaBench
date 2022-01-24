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
struct uvd {scalar_t__ user_data; } ;
struct konicawc {int /*<<< orphan*/ ** sts_urb; } ;

/* Variables and functions */
 int USBVIDEO_NUMSBUF ; 
 int /*<<< orphan*/  FUNC0 (struct konicawc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct uvd *uvd)
{
	int i;
	struct konicawc *cam = (struct konicawc *)uvd->user_data;

	FUNC0(cam);

	for (i = 0; i < USBVIDEO_NUMSBUF; i++) {
		FUNC1(cam->sts_urb[i]);
		cam->sts_urb[i] = NULL;
	}
}