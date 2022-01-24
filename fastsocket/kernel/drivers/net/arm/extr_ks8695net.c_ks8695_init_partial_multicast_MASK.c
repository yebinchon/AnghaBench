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
struct ks8695_priv {int dummy; } ;
struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int AAH_E ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int KS8695_NR_ADDRESSES ; 
 int /*<<< orphan*/  FUNC3 (struct ks8695_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ks8695_priv *ksp,
			      struct dev_mc_list *addr,
			      int nr_addr)
{
	u32 low, high;
	int i;

	for (i = 0; i < nr_addr; i++, addr = addr->next) {
		/* Ran out of addresses? */
		if (!addr)
			break;
		/* Ran out of space in chip? */
		FUNC0(i == KS8695_NR_ADDRESSES);

		low = (addr->dmi_addr[2] << 24) | (addr->dmi_addr[3] << 16) |
			(addr->dmi_addr[4] << 8) | (addr->dmi_addr[5]);
		high = (addr->dmi_addr[0] << 8) | (addr->dmi_addr[1]);

		FUNC3(ksp, FUNC2(i), low);
		FUNC3(ksp, FUNC1(i), AAH_E | high);
	}

	/* Clear the remaining Additional Station Addresses */
	for (; i < KS8695_NR_ADDRESSES; i++) {
		FUNC3(ksp, FUNC2(i), 0);
		FUNC3(ksp, FUNC1(i), 0);
	}
}