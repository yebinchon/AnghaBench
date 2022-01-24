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
struct TYPE_2__ {int context; } ;
struct ohci_iso_recv {int /*<<< orphan*/  ContextControlClear; int /*<<< orphan*/  ohci; TYPE_1__ task; } ;
struct hpsb_iso {struct ohci_iso_recv* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI1394_IsoRecvIntMaskClear ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hpsb_iso *iso)
{
	struct ohci_iso_recv *recv = iso->hostdata;

	/* disable interrupts */
	FUNC1(recv->ohci, OHCI1394_IsoRecvIntMaskClear, 1 << recv->task.context);

	/* halt DMA */
	FUNC0(recv->ohci, recv->ContextControlClear, NULL);
}