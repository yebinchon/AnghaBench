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
struct usb_se401 {struct usb_se401* height; struct usb_se401* width; int /*<<< orphan*/  camera_name; TYPE_3__* dev; int /*<<< orphan*/ * inturb; TYPE_2__* scratch; TYPE_1__* sbuf; int /*<<< orphan*/ ** urb; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct usb_se401* data; } ;
struct TYPE_4__ {struct usb_se401* data; } ;

/* Variables and functions */
 int SE401_NUMSBUF ; 
 int SE401_NUMSCRATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_se401*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_se401 *se401)
{
	int i;

	se401->dev = NULL;

	for (i = 0; i < SE401_NUMSBUF; i++)
		if (se401->urb[i]) {
			FUNC3(se401->urb[i]);
			FUNC2(se401->urb[i]);
			se401->urb[i] = NULL;
			FUNC1(se401->sbuf[i].data);
		}

	for (i = 0; i < SE401_NUMSCRATCH; i++)
		FUNC1(se401->scratch[i].data);

	if (se401->inturb) {
		FUNC3(se401->inturb);
		FUNC2(se401->inturb);
	}
	FUNC0(&se401->dev->dev, "%s disconnected", se401->camera_name);

	/* Free the memory */
	FUNC1(se401->width);
	FUNC1(se401->height);
	FUNC1(se401);
}