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
struct ql3_adapter {int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  QL_DO_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ql3_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev)
{
	struct ql3_adapter *qdev = FUNC1(ndev);

	/*
	 * Wait for device to recover from a reset.
	 * (Rarely happens, but possible.)
	 */
	while (!FUNC3(QL_ADAPTER_UP,&qdev->flags))
		FUNC0(50);

	FUNC2(qdev,QL_DO_RESET);
	return 0;
}