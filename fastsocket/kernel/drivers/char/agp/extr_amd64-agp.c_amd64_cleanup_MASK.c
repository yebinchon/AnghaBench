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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD64_GARTAPERTURECTL ; 
 int /*<<< orphan*/  AMD64_GARTEN ; 
 int /*<<< orphan*/  AMD_NB_GART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	u32 tmp;
	int i;

	if (!FUNC0(AMD_NB_GART))
		return;

	for (i = 0; i < FUNC1(); i++) {
		struct pci_dev *dev = FUNC2(i)->misc;
		/* disable gart translation */
		FUNC3(dev, AMD64_GARTAPERTURECTL, &tmp);
		tmp &= ~AMD64_GARTEN;
		FUNC4(dev, AMD64_GARTAPERTURECTL, tmp);
	}
}