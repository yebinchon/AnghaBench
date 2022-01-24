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
struct net_device {int dummy; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LANCER_FW_DUMP_FILE ; 
 int /*<<< orphan*/  MAX_PRIVILEGES ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev)
{
	struct be_adapter *adapter = FUNC5(netdev);
	u32 log_size = 0;

	if (!FUNC2(adapter, MAX_PRIVILEGES))
		return 0;

	if (FUNC1(adapter)) {
		if (FUNC3(adapter))
			log_size = FUNC4(adapter,
					LANCER_FW_DUMP_FILE);
		else
			FUNC0(adapter, &log_size);
	}
	return log_size;
}