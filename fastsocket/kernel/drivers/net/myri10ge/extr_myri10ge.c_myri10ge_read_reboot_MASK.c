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
struct pci_dev {int dummy; } ;
struct myri10ge_priv {int vendor_specific_offset; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static u32 FUNC3(struct myri10ge_priv *mgp)
{
	struct pci_dev *pdev = mgp->pdev;
	int vs = mgp->vendor_specific_offset;
	u32 reboot;

	/*enter read32 mode */
	FUNC1(pdev, vs + 0x10, 0x3);

	/*read REBOOT_STATUS (0xfffffff0) */
	FUNC2(pdev, vs + 0x18, 0xfffffff0);
	FUNC0(pdev, vs + 0x14, &reboot);
	return reboot;
}