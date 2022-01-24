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
struct isci_host {int /*<<< orphan*/  eventq; int /*<<< orphan*/  flags; TYPE_1__* pdev; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IHOST_START_PENDING ; 
 int SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct isci_host *ihost, enum sci_status completion_status)
{
	if (completion_status != SCI_SUCCESS)
		FUNC1(&ihost->pdev->dev,
			"controller start timed out, continuing...\n");
	FUNC0(IHOST_START_PENDING, &ihost->flags);
	FUNC2(&ihost->eventq);
}