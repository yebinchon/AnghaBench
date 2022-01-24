#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  base_addr; } ;
struct TYPE_3__ {unsigned char hcr_val; int /*<<< orphan*/  tx_pcb; } ;
typedef  TYPE_1__ elp_device ;

/* Variables and functions */
 int ACRF ; 
 unsigned char ATTN ; 
 unsigned char DIR ; 
 unsigned char FLSH ; 
 int /*<<< orphan*/  HSF_PCB_NAK ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,unsigned long) ; 

__attribute__((used)) static inline void FUNC9(struct net_device *dev)
{
	unsigned long timeout;
	elp_device *adapter = FUNC3(dev);
	unsigned char orig_hcr = adapter->hcr_val;

	FUNC4(0, dev);

	if (FUNC1(dev->base_addr) & ACRF) {
		do {
			FUNC0(dev->base_addr);
			timeout = jiffies + 2*HZ/100;
			while (FUNC8(jiffies, timeout) && !(FUNC1(dev->base_addr) & ACRF));
		} while (FUNC1(dev->base_addr) & ACRF);
		FUNC6(dev, HSF_PCB_NAK);
	}
	FUNC4(adapter->hcr_val | ATTN | DIR, dev);
	FUNC2(10);
	FUNC4(adapter->hcr_val & ~ATTN, dev);
	FUNC2(10);
	FUNC4(adapter->hcr_val | FLSH, dev);
	FUNC2(10);
	FUNC4(adapter->hcr_val & ~FLSH, dev);
	FUNC2(10);

	FUNC4(orig_hcr, dev);
	if (!FUNC7(dev, &adapter->tx_pcb))
		FUNC5("%s: start receive command failed\n", dev->name);
}