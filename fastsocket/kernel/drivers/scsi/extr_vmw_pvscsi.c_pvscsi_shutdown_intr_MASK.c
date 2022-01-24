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
struct pvscsi_adapter {scalar_t__ use_msix; int /*<<< orphan*/  dev; scalar_t__ use_msi; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pvscsi_adapter *adapter)
{
	if (adapter->irq) {
		FUNC0(adapter->irq, adapter);
		adapter->irq = 0;
	}
	if (adapter->use_msi) {
		FUNC1(adapter->dev);
		adapter->use_msi = 0;
	} else if (adapter->use_msix) {
		FUNC2(adapter->dev);
		adapter->use_msix = 0;
	}
}