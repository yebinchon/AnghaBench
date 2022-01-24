#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcilst_struct {int used; TYPE_1__* pcidev; int /*<<< orphan*/  irq; int /*<<< orphan*/ * io_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct pcilst_struct *inova)
{
	int i;

	if (!inova) {
		FUNC2(" - BUG!! inova is NULL!\n");
		return -1;
	}

	if (inova->used)
		return 1;
	if (FUNC0(inova->pcidev, "icp_multi")) {
		FUNC2(" - Can't enable PCI device and request regions!\n");
		return -1;
	}
	/* Resources will be accurate now. */
	for (i = 0; i < 5; i++)
		inova->io_addr[i] = FUNC1(inova->pcidev, i);
	inova->irq = inova->pcidev->irq;
	inova->used = 1;
	return 0;
}