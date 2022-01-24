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
struct net_device {int dummy; } ;
struct ethtool_regs {int /*<<< orphan*/  len; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LANCER_FW_DUMP_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void
FUNC6(struct net_device *netdev, struct ethtool_regs *regs, void *buf)
{
	struct be_adapter *adapter = FUNC5(netdev);

	if (FUNC1(adapter)) {
		FUNC4(buf, 0, regs->len);
		if (FUNC2(adapter))
			FUNC3(adapter, LANCER_FW_DUMP_FILE,
					regs->len, buf);
		else
			FUNC0(adapter, regs->len, buf);
	}
}