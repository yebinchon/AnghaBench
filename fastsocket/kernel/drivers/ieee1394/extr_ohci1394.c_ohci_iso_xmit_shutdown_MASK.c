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
struct ohci_iso_xmit {int /*<<< orphan*/  prog; scalar_t__ task_active; int /*<<< orphan*/  task; int /*<<< orphan*/  ohci; } ;
struct hpsb_iso {struct ohci_iso_xmit* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_iso_xmit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_iso*) ; 

__attribute__((used)) static void FUNC4(struct hpsb_iso *iso)
{
	struct ohci_iso_xmit *xmit = iso->hostdata;

	if (xmit->task_active) {
		FUNC3(iso);
		FUNC2(xmit->ohci, &xmit->task);
		xmit->task_active = 0;
	}

	FUNC0(&xmit->prog);
	FUNC1(xmit);
	iso->hostdata = NULL;
}