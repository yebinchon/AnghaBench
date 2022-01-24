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
typedef  int u32 ;
typedef  int u16 ;
struct msix_entry {int dummy; } ;
struct qib_msix_entry {struct msix_entry msix; } ;
struct qib_devdata {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PCI_MSIX_FLAGS ; 
 int PCI_MSIX_FLAGS_QSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct msix_entry*) ; 
 struct msix_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct msix_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct qib_devdata *dd, int pos, u32 *msixcnt,
			   struct qib_msix_entry *qib_msix_entry)
{
	int ret;
	u32 tabsize = 0;
	u16 msix_flags;
	struct msix_entry *msix_entry;
	int i;

	/* We can't pass qib_msix_entry array to qib_msix_setup
	 * so use a dummy msix_entry array and copy the allocated
	 * irq back to the qib_msix_entry array. */
	msix_entry = FUNC1(*msixcnt * sizeof(*msix_entry), GFP_KERNEL);
	if (!msix_entry) {
		ret = -ENOMEM;
		goto do_intx;
	}
	for (i = 0; i < *msixcnt; i++)
		msix_entry[i] = qib_msix_entry[i].msix;

	FUNC3(dd->pcidev, pos + PCI_MSIX_FLAGS, &msix_flags);
	tabsize = 1 + (msix_flags & PCI_MSIX_FLAGS_QSIZE);
	if (tabsize > *msixcnt)
		tabsize = *msixcnt;
	ret = FUNC2(dd->pcidev, msix_entry, tabsize);
	if (ret > 0) {
		tabsize = ret;
		ret = FUNC2(dd->pcidev, msix_entry, tabsize);
	}
do_intx:
	if (ret) {
		FUNC4(dd,
			"pci_enable_msix %d vectors failed: %d, falling back to INTx\n",
			tabsize, ret);
		tabsize = 0;
	}
	for (i = 0; i < tabsize; i++)
		qib_msix_entry[i].msix = msix_entry[i];
	FUNC0(msix_entry);
	*msixcnt = tabsize;

	if (ret)
		FUNC5(dd->pcidev);

}