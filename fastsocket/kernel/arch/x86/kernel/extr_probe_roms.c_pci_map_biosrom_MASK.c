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
struct resource {int /*<<< orphan*/  start; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 struct resource* FUNC0 (struct pci_dev*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 

void *FUNC3(struct pci_dev *pdev)
{
	struct resource *oprom = FUNC0(pdev);

	if (!oprom)
		return NULL;

	return FUNC1(oprom->start, FUNC2(oprom));
}