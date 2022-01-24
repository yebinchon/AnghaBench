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
struct zfcp_adapter {int /*<<< orphan*/  stat_miss; int /*<<< orphan*/  qdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct zfcp_adapter *adapter)
{
	while (FUNC1(&adapter->stat_miss) > 0)
		if (FUNC3(adapter->qdio)) {
			if (FUNC1(&adapter->stat_miss) >= 16) {
				FUNC2(adapter, 0, "axsref1",
							NULL);
				return 1;
			}
			break;
		} else
			FUNC0(&adapter->stat_miss);
	return 0;
}