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
struct vmxnet3_adapter {int /*<<< orphan*/  pdev; int /*<<< orphan*/  hw_addr1; int /*<<< orphan*/  hw_addr0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct vmxnet3_adapter *adapter)
{
	FUNC0(!adapter->pdev);

	FUNC1(adapter->hw_addr0);
	FUNC1(adapter->hw_addr1);
	FUNC3(adapter->pdev, (1 << 2) - 1);
	FUNC2(adapter->pdev);
}