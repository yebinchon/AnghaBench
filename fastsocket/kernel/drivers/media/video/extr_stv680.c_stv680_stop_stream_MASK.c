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
struct usb_stv {TYPE_2__* scratch; TYPE_1__* sbuf; int /*<<< orphan*/ ** urb; scalar_t__ streaming; int /*<<< orphan*/  udev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int STV680_NUMSBUF ; 
 int STV680_NUMSCRATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3 (struct usb_stv *stv680)
{
	int i;

	if (!stv680->streaming || !stv680->udev)
		return 1;

	stv680->streaming = 0;

	for (i = 0; i < STV680_NUMSBUF; i++)
		if (stv680->urb[i]) {
			FUNC2 (stv680->urb[i]);
			FUNC1 (stv680->urb[i]);
			stv680->urb[i] = NULL;
			FUNC0(stv680->sbuf[i].data);
		}
	for (i = 0; i < STV680_NUMSCRATCH; i++) {
		FUNC0(stv680->scratch[i].data);
		stv680->scratch[i].data = NULL;
	}

	return 0;
}