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
struct igb_adapter {int flags; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * msix_entries; } ;

/* Variables and functions */
 int IGB_FLAG_HAS_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct igb_adapter *adapter)
{
	if (adapter->msix_entries) {
		FUNC2(adapter->pdev);
		FUNC0(adapter->msix_entries);
		adapter->msix_entries = NULL;
	} else if (adapter->flags & IGB_FLAG_HAS_MSI) {
		FUNC1(adapter->pdev);
	}
}