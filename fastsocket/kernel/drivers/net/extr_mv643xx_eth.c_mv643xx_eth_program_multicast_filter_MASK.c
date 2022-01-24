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
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int flags; struct dev_addr_list* mc_list; } ;
struct mv643xx_eth_private {int port_num; } ;
struct dev_addr_list {int* da_addr; struct dev_addr_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 struct mv643xx_eth_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mv643xx_eth_private*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct mv643xx_eth_private *mp = FUNC7(dev);
	u32 *mc_spec;
	u32 *mc_other;
	struct dev_addr_list *addr;
	int i;

	if (dev->flags & (IFF_PROMISC | IFF_ALLMULTI)) {
		int port_num;
		u32 accept;

oom:
		port_num = mp->port_num;
		accept = 0x01010101;
		for (i = 0; i < 0x100; i += 4) {
			FUNC8(mp, FUNC1(port_num) + i, accept);
			FUNC8(mp, FUNC0(port_num) + i, accept);
		}
		return;
	}

	mc_spec = FUNC4(0x200, GFP_ATOMIC);
	if (mc_spec == NULL)
		goto oom;
	mc_other = mc_spec + (0x100 >> 2);

	FUNC6(mc_spec, 0, 0x100);
	FUNC6(mc_other, 0, 0x100);

	for (addr = dev->mc_list; addr != NULL; addr = addr->next) {
		u8 *a = addr->da_addr;
		u32 *table;
		int entry;

		if (FUNC5(a, "\x01\x00\x5e\x00\x00", 5) == 0) {
			table = mc_spec;
			entry = a[5];
		} else {
			table = mc_other;
			entry = FUNC2(a);
		}

		table[entry >> 2] |= 1 << (8 * (entry & 3));
	}

	for (i = 0; i < 0x100; i += 4) {
		FUNC8(mp, FUNC1(mp->port_num) + i, mc_spec[i >> 2]);
		FUNC8(mp, FUNC0(mp->port_num) + i, mc_other[i >> 2]);
	}

	FUNC3(mc_spec);
}