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
struct pvscsi_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVSCSI_CMD_ADAPTER_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pvscsi_adapter const*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_adapter const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_adapter const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct pvscsi_adapter *adapter)
{
	FUNC0(FUNC1(adapter), "Adapter Reset on %p\n", adapter);

	FUNC2(adapter, PVSCSI_CMD_ADAPTER_RESET, NULL, 0);
}