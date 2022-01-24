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
struct adapter {int flags; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int USING_MSI ; 
 int USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct adapter *adapter)
{
	if (adapter->flags & USING_MSIX) {
		FUNC1(adapter->pdev);
		adapter->flags &= ~USING_MSIX;
	} else if (adapter->flags & USING_MSI) {
		FUNC0(adapter->pdev);
		adapter->flags &= ~USING_MSI;
	}
}