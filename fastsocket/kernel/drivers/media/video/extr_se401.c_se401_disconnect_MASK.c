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
struct usb_se401 {int removed; int /*<<< orphan*/  wq; scalar_t__ streaming; TYPE_1__* frame; int /*<<< orphan*/  user; int /*<<< orphan*/  vdev; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {void* grabstate; } ;

/* Variables and functions */
 void* FRAME_ERROR ; 
 struct usb_se401* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_se401*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct usb_se401 *se401 = FUNC0(intf);

	FUNC2(intf, NULL);
	if (se401) {
		FUNC3(&se401->vdev);
		if (!se401->user)
			FUNC1(se401);
		else {
			se401->frame[0].grabstate = FRAME_ERROR;
			se401->frame[0].grabstate = FRAME_ERROR;

			se401->streaming = 0;

			FUNC4(&se401->wq);
			se401->removed = 1;
		}
	}
}