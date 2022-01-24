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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct pci_dev *pdev, int offset,
				u32 val, const char *func)
{
	int err = 0;

	err = FUNC2(pdev, offset, val);
	if (err)
		FUNC1("%s: error writing to F%dx%03x.\n",
			   func, FUNC0(pdev->devfn), offset);

	return err;
}