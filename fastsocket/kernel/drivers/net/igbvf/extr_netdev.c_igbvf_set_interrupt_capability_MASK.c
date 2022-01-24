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
struct msix_entry {int dummy; } ;
struct igbvf_adapter {TYPE_1__* pdev; TYPE_2__* msix_entries; } ;
struct TYPE_5__ {int entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct igbvf_adapter*) ; 
 TYPE_2__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC4(struct igbvf_adapter *adapter)
{
	int err = -ENOMEM;
	int i;

	/* we allocate 3 vectors, 1 for tx, 1 for rx, one for pf messages */
	adapter->msix_entries = FUNC2(3, sizeof(struct msix_entry),
	                                GFP_KERNEL);
	if (adapter->msix_entries) {
		for (i = 0; i < 3; i++)
			adapter->msix_entries[i].entry = i;

		err = FUNC3(adapter->pdev,
		                      adapter->msix_entries, 3);
	}

	if (err) {
		/* MSI-X failed */
		FUNC0(&adapter->pdev->dev,
		        "Failed to initialize MSI-X interrupts.\n");
		FUNC1(adapter);
	}
}