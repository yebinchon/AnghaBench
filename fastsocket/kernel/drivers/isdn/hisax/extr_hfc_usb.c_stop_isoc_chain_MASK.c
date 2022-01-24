#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ active; int /*<<< orphan*/ * urb; TYPE_1__* iso; int /*<<< orphan*/  fifonum; } ;
typedef  TYPE_2__ usb_fifo ;
struct TYPE_4__ {int /*<<< orphan*/ * purb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HFCUSB_DBG_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(usb_fifo * fifo)
{
	int i;

	for (i = 0; i < 2; i++) {
		if (fifo->iso[i].purb) {
			FUNC0(HFCUSB_DBG_INIT,
			    "HFC-S USB: Stopping iso chain for fifo %i.%i",
			    fifo->fifonum, i);
			FUNC2(fifo->iso[i].purb);
			FUNC1(fifo->iso[i].purb);
			fifo->iso[i].purb = NULL;
		}
	}

	FUNC2(fifo->urb);
	FUNC1(fifo->urb);
	fifo->urb = NULL;
	fifo->active = 0;
}