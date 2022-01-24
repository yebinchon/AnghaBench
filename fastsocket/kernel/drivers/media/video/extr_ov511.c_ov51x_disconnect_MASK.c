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
struct usb_ov511 {int nr; int curframe; int /*<<< orphan*/  cbuf_lock; struct usb_ov511* cbuf; int /*<<< orphan*/  user; int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; scalar_t__ streaming; int /*<<< orphan*/  wq; TYPE_1__* frame; scalar_t__ vdev; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  grabstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_ERROR ; 
 int OV511_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ov511_devused ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ov511*) ; 
 struct usb_ov511* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_interface *intf)
{
	struct usb_ov511 *ov = FUNC6(intf);
	int n;

	FUNC0(3, "");

	FUNC2(&ov->lock);
	FUNC7 (intf, NULL);

	if (!ov) {
		FUNC3(&ov->lock);
		return;
	}

	/* Free device number */
	ov511_devused &= ~(1 << ov->nr);

	if (ov->vdev)
		FUNC8(ov->vdev);

	for (n = 0; n < OV511_NUMFRAMES; n++)
		ov->frame[n].grabstate = FRAME_ERROR;

	ov->curframe = -1;

	/* This will cause the process to request another frame */
	for (n = 0; n < OV511_NUMFRAMES; n++)
		FUNC9(&ov->frame[n].wq);

	FUNC9(&ov->wq);

	ov->streaming = 0;
	FUNC5(ov);
	FUNC3(&ov->lock);

	ov->dev = NULL;

	/* Free the memory */
	if (ov && !ov->user) {
		FUNC2(&ov->cbuf_lock);
		FUNC1(ov->cbuf);
		ov->cbuf = NULL;
		FUNC3(&ov->cbuf_lock);

		FUNC4(ov);
		FUNC1(ov);
		ov = NULL;
	}

	FUNC0(3, "Disconnect complete");
}